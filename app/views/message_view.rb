class MessageView < WebView
  def initWithFrame frame
    super.tap do
      self.mainFrame.loadRequest(NSURLRequest.requestWithURL(NSURL.URLWithString("http://habrahabr.ru")))

      look_webview self
    end
  end

  def look_webview webview
    puts "=" * 80
    puts "WebView #{webview}"
    puts "=" * 80
    puts "isLoading: #{webview.isLoading}"
    puts "selectedFrame: #{webview.selectedFrame}"
    puts "mainFrameURL: #{webview.mainFrameURL}"
    puts "mainFrameTitle: #{webview.mainFrameTitle}"
    puts "mainFrameIcon: #{webview.mainFrameIcon}"
    puts "mainFrameDocument: #{webview.mainFrameDocument}"
    puts "downloadDelegate: #{webview.downloadDelegate}"
    puts "frameLoadDelegate: #{webview.frameLoadDelegate}"
    puts "policyDelegate: #{webview.policyDelegate}"
    puts "resourceLoadDelegate: #{webview.resourceLoadDelegate}"
    puts "UIDelegate: #{webview.UIDelegate}"
    puts "hostWindow: #{webview.hostWindow}"
    puts "estimatedProgress: #{webview.estimatedProgress}"
  end
end
