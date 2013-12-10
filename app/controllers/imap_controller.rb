class IMAPController

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
        requestKind = MCOIMAPMessagesRequestKindHeaders
        folder = "INBOX"
        uids = MCOIndexSet.indexSetWithRange MCORangeMake(1, UINT64_MAX)

        @session.fetchMessagesByUIDOperationWithFolder(folder, requestKind:requestKind, uids:uids).
        start(-> (error, messages, vanished_messages) do
          if error
            puts error.localizedDescription.red
          else
            puts "#{messages.count} messages"
            messages.each do |message|
              puts message.header.subject
            end
          end
        end)
      end
    end)
  end

end
