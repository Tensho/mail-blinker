module MessageViewWebResourceLoadDelegate

  # Loading Content

  def webView webview, resource: resource, willSendRequest: request, redirectResponse: response, fromDataSource: webdatasource
    puts "webView #{webview} resource #{resource} willSendRequest #{request} redirectResponse #{response} fromDataSource #{webdatasource}".green
  end

  # Loading Content

  def webView webview, resource: id, willSendRequest: request, redirectResponse: response, fromDataSource: webdatasource
    puts "webView #{webview} resource #{id} willSendRequest #{request} redirectResponse #{response} fromDataSource #{webdatasource}".magenta
  end

  def webView webview, resource: id, didFinishLoadingFromDataSource: webdatasource
    puts "webView #{webview} resource #{id} didFinishLoadingFromDataSource #{webdatasource}".magenta
  end

  def webView webview, resource: id, didReceiveResponse: response, fromDataSource: webdatasource
    puts "webView #{webview} resource #{id} didReceiveResponse #{response} fromDataSource #{webdatasource}".magenta
  end

  def webView webview, resource: id, didReceiveContentLength: length, fromDataSource: webdatasource
    puts "webView #{webview} resource #{id} didReceiveContentLength #{length} fromDataSource #{webdatasource}".magenta
  end

  def webView webview, resource: id, didFailLoadingWithError: error, fromDataSource: webdatasource
    puts "webView #{webview} resource #{id} didFailLoadingWithError #{error} fromDataSource #{webdatasource}".magenta
  end

  def webView webview, plugInFailedWithError: error, dataSource: webdatasource
    puts "webView #{webview} plugInFailedWithError #{error} dataSource #{webdatasource}".magenta
  end

  # Authenticating Resources

  def webView webview, resource: id, didReceiveAuthenticationChallenge: challenge, fromDataSource: webdatasource
    puts "webView #{webview} resource #{id} didReceiveAuthenticationChallenge #{challenge} fromDataSource #{webdatasource}".magenta
  end

  def webView webview, resource: id, didCancelAuthenticationChallenge: challenge, fromDataSource: webdatasource
    puts "webView #{webview} resource #{id} didCancelAuthenticationChallenge #{challenge} fromDataSource #{webdatasource}".magenta
  end
end
