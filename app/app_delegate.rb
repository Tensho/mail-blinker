class AppDelegate

  def applicationWillFinishLaunching notification
    puts "applicationWillFinishLaunching".yellow
  end

  def applicationDidFinishLaunching notification
    puts "applicationDidFinishLaunching".yellow
    # buildMenu
    # buildWindow
  end

  def applicationWillTerminate notification
    puts "applicationWillTerminate".yellow
  end

  def applicationShouldTerminate notification
    puts "applicationShouldTerminate".yellow
    NSTerminateNow
  end

  def applicationShouldTerminateAfterLastWindowClosed sender
    puts "applicationShouldTerminateAfterLastWindowClosed".yellow
    true
  end

  def buildWindow
    @main_window_controller = MainWindowController.new
    @main_window = @main_window_controller.window
    @main_window.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @main_window.center
    @main_window.orderFrontRegardless
  end
end
