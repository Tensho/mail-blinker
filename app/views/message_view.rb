class MessageView < WebView
  include MessageViewNotifications

  def initWithFrame frame
    super.tap do
      self.mainFrame.loadRequest(NSURLRequest.requestWithURL(NSURL.URLWithString("http://habrahabr.ru")))
      add_observers

      look_webview self
      look_preferences self.preferences
      look_webframe self.mainFrame
      look_webdatasource self.mainFrame.dataSource
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

  def look_preferences preferences
    puts "=" * 80
    puts "Preferences #{preferences}"
    puts "=" * 80
    puts "autosaves: #{preferences.autosaves}"
    puts "isJavaEnabled: #{preferences.isJavaEnabled}"
    puts "isJavaScriptEnabled: #{preferences.isJavaScriptEnabled}"
    puts "arePlugInsEnabled: #{preferences.arePlugInsEnabled}"
    puts "userStyleSheetEnabled: #{preferences.userStyleSheetEnabled}"
    puts "userStyleSheetLocation: #{preferences.userStyleSheetLocation}"
    puts "cursiveFontFamily: #{preferences.cursiveFontFamily}"
    puts "sansSerifFontFamily: #{preferences.sansSerifFontFamily}"
    puts "standardFontFamily: #{preferences.standardFontFamily}"
    puts "defaultFixedFontSize: #{preferences.defaultFixedFontSize}"
    puts "defaultFontSize: #{preferences.defaultFontSize}"
    puts "defaultTextEncodingName: #{preferences.defaultTextEncodingName}"
    puts "loadsImagesAutomatically: #{preferences.loadsImagesAutomatically}"
    puts "privateBrowsingEnabled: #{preferences.privateBrowsingEnabled}"
    puts "tabsToLinks: #{preferences.tabsToLinks}"
    puts "usesPageCache: #{preferences.usesPageCache}"
    puts "cacheModel: #{preferences.cacheModel}"
  end

  def look_webframe webframe
    puts "=" * 80
    puts "WebFrame #{webframe}"
    puts "=" * 80
    puts "dataSource: #{webframe.dataSource}"
    puts "provisionalDataSource: #{webframe.provisionalDataSource}"
    puts "parentFrame: #{webframe.parentFrame}"
    puts "childFrames: #{webframe.childFrames}"
    puts "frameView: #{webframe.frameView}"
    puts "webView: #{webframe.webView}"
    puts "name: #{webframe.name}"
    puts "DOMDocument: #{webframe.DOMDocument}"
    puts "frameElement: #{webframe.frameElement}"
    # puts "globalContext: #{webframe.globalContext}"
    puts "windowObject: #{webframe.windowObject}"
  end

  def look_webdatasource webdatasource
    puts "=" * 80
    puts "WebDataSource #{webdatasource}"
    puts "=" * 80
    puts "data: #{webdatasource.data}"
    puts "isLoading: #{webdatasource.isLoading}"
    puts "pageTitle: #{webdatasource.pageTitle}"
    puts "representation: #{webdatasource.representation}"
    puts "textEncodingName: #{webdatasource.textEncodingName}"
    puts "initialRequest: #{webdatasource.initialRequest}"
    puts "request: #{webdatasource.request}"
    puts "response: #{webdatasource.response}"
    puts "webFrame: #{webdatasource.webFrame}"
    puts "unreachableURL: #{webdatasource.unreachableURL}"
    puts "webArchive: #{webdatasource.webArchive}"
    puts "mainResource: #{webdatasource.mainResource}"
    puts "subresources: #{webdatasource.subresources}"
  end

end
