class FolderWindowController < TeacupWindowController
  stylesheet :main

  attr_accessor :messages_controller

  def loadWindow
    self.window = NSWindow.alloc.initWithContentRect [[0, 0], [750, 750]],
      styleMask: NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask | NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false
  end

  layout do
    @messages_controller = MessagesController.new
    subview @messages_controller.view, :root
  end
end
