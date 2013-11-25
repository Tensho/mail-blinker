class MessagesController < NSViewController

  def loadView
    super
    layout self.view, :messages_controller do
      @message_view = MessageView.new
      @message_view.mainFrame.loadRequest(NSURLRequest.requestWithURL(NSURL.URLWithString("http://google.com")))
      subview @message_view, :message_view
    end
  end

end
