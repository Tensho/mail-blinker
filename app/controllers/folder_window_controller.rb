class FolderWindowController < TeacupWindowController
  stylesheet :main

  attr_accessor :messages_controller

  SCREEN_WIDTH = NSScreen.mainScreen.frame.size.width
  SCREEN_HEIGHT = NSScreen.mainScreen.frame.size.height
  WINDOW_SIZE = 500
  MAX_WINDOWS_X = SCREEN_WIDTH.to_i / WINDOW_SIZE
  MAX_WINDOWS_Y = SCREEN_HEIGHT.to_i / WINDOW_SIZE

  @@x = 0
  @@y = 0

  def loadWindow
    window_rect = [[@@x * WINDOW_SIZE, @@y * WINDOW_SIZE], [WINDOW_SIZE, WINDOW_SIZE]]
    self.window = NSWindow.alloc.initWithContentRect window_rect,
      styleMask: NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask | NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false

    if @@x < MAX_WINDOWS_X
      @@x += 1
    else
      @@x = 0
      if @@y < MAX_WINDOWS_Y
        @@y += 1
      else
        @@y = 0
      end
    end
  end

  layout do
    @messages_controller = MessagesController.new
    subview @messages_controller.view, :root
  end
end
