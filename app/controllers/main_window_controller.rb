class MainWindowController < TeacupWindowController
  stylesheet :main

  def loadWindow
    self.window = NSWindow.alloc.initWithContentRect [[0, 0], [750, 750]],
      styleMask: NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask | NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false
  end

end
