class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
  end

  def buildWindow
    @main_window_controller = MainWindowController.new
    @main_window = @main_window_controller.window
    @main_window.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @main_window.center
    @main_window.orderFrontRegardless
  end
end
