class AppDelegate

  def applicationWillFinishLaunching notification
    puts "applicationWillFinishLaunching".yellow
  end

  def applicationDidFinishLaunching notification
    puts "applicationDidFinishLaunching".yellow
    buildMenu

    @folder_window_controllers = []

    @imap_controller = IMAPController.new
    @imap_controller.synchronize
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

  def build_folder_window folder
    folder_window_controller = FolderWindowController.new
    folder_window = folder_window_controller.window
    folder_window.title = folder.local_path
    folder_window.center
    folder_window.orderFrontRegardless

    @folder_window_controllers << folder_window_controller
    folder_window_controller
  end
end
