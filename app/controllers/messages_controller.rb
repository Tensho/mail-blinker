class MessagesController < NSViewController

  def loadView
    super
    layout self.view do
      @message_view = MessageView.new
      subview @message_view, :root
    end
  end

end
