class MainWindowController < TeacupWindowController
  stylesheet :main

  layout do
    @messages_controller = MessagesController.new
    subview @messages_controller.view
  end

end
