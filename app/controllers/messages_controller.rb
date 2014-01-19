class MessagesController < NSViewController

  attr_accessor :message_view

  def loadView
    super
    layout self.view do
      @message_view = MessageView.new
      subview @message_view, :root
    end
  end

end
