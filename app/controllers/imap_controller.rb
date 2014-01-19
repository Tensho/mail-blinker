class IMAPController

  REQUEST_KIND = MCOIMAPMessagesRequestKindHeaders | MCOIMAPMessagesRequestKindStructure
  UIDS = MCOIndexSet.indexSetWithRange MCORangeMake(1, UINT64_MAX)

  def initialize
    @session = MCOIMAPSession.new
    @session.hostname = 'imap.gmail.com'
    @session.port = 993
    @session.username = 'USERNAME'
    @session.password = 'PASSWORD'
    @session.connectionType = MCOConnectionTypeTLS
    @session.timeout = 10
  end

  def synchronize
    @session.checkAccountOperation.
    start(-> (error) do
      if error
        puts error.localizedDescription.red
      else
        @session.fetchNamespaceOperation.start(-> (error, namespaces) do
          if error
            puts error.localizedDescription.red
          else
            @session.setDefaultNamespace(namespaces[MCOIMAPNamespacePersonal])

            @session.fetchAllFoldersOperation.
            start(-> (error, folders) do
              folders.each do |folder|
                folder.local_path = @session.defaultNamespace.componentsFromPath(folder.path).join('/')

                App.delegate.build_folder_window(folder)

                @session.fetchMessagesByUIDOperationWithFolder(folder.path, requestKind: REQUEST_KIND, uids: UIDS).
                start(-> (error, imap_messages, vanished_messages) do
                  if error
                    puts error.localizedDescription.red
                  else
                    puts "#{folder.local_path}: #{imap_messages.count} messages"

                    imap_messages.each do |imap_message|
                      puts imap_messages.map(&:header).map(&:subject)
                      # imap_message = imap_messages.last
                      # puts imap_message.header.subject

                      # MCOIMAPSession#htmlRenderingOperationWithMessage

                      @session.htmlRenderingOperationWithMessage(imap_message, folder: folder.path).
                      start(-> (html, error) do
                        if error
                          puts error.localizedDescription.red
                        else
                          App.notification_center.post :reload_notification, nil, html: html
                        end
                      end)

                      # MCOIMAPMessage#htmlRenderingWithFolder

                      # html = imap_message.htmlRenderingWithFolder folder, delegate: MessageViewMCOHTMLRendererIMAPDelegate
                      # App.notification_center.post :reload_notification, nil, html: html

                      # MCOIMAPMessage#fetchMessageByUIDOperationWithFolder

                      # @session.fetchMessageByUIDOperationWithFolder(folder, uid: imap_message.uid).
                      # start(-> (error, message_data) do
                      #   message_parser = MCOMessageParser.messageParserWithData message_data
                      #   html = message_parser.htmlRenderingWithDelegate MessageViewMCOHTMLRendererDelegate
                      #   App.notification_center.post :reload_notification, nil, html: html
                      # end)
                    end
                  end
                end)
              end
            end)
          end
        end)
      end
    end)
  end

end
