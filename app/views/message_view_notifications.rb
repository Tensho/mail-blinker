module MessageViewNotifications

  def add_observer
    @message_view_observer = App.notification_center.observe nil, self do |notification|
      puts "#{notification.name} #{notification.object}".blue
    end
  end

end
