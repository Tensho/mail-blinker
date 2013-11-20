class MessagesController < NSViewController

  layout do |root|
    subview WebView,
      frame: root.bounds,
      autoresizingMask: NSViewWidthSizable | NSViewHeightSizable
  end

end
