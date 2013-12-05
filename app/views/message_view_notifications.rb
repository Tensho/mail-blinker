module MessageViewNotifications

  def add_observers
    NSNotificationCenter.defaultCenter.addObserver self,
                                         selector: "check:",
                                             name: nil,
                                           object: self
  end

  def check notification
    puts "#{notification.name} #{notification.object}".blue
  end
end
