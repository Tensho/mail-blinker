class MainWindowController < TeacupWindowController

  layout do |view|
    @messages_controller = MessagesController.new
    subview @messages_controller.view,
      frame: [[10, 10], [460, 340]],
      autoresizingMask: NSViewWidthSizable | NSViewHeightSizable,
  end

end
