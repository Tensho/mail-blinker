class MessageView < WebView

  def loadView
    super
    self.stylename = :message_view
  end
end
