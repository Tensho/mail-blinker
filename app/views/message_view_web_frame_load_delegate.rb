module MessageViewWebFrameLoadDelegate

  # State Change Messages

  def webView webview, didStartProvisionalLoadForFrame: webframe
    puts "webView #{webview} didStartProvisionalLoadForFrame #{webframe}".green
  end

  def webView webview, didFinishLoadForFrame: webframe
    puts "webView #{webview} didFinishLoadForFrame #{webframe}".green
  end

  def webView webview, didCommitLoadForFrame: webframe
    puts "webView #{webview} didCommitLoadForFrame #{webframe}".green
  end

  def webView webview, willCloseFrame: webframe
    puts "webView #{webview} willCloseFrame #{webframe}".green
  end

  def webView webview, didChangeLocationWithinPageForFrame: webframe
    puts "webView #{webview} didChangeLocationWithinPageForFrame #{webframe}".green
  end

  # Data Received Messages

  def webView webview, didReceiveTitle: title, forFrame: webframe
    puts "webView #{webview} didReceiveTitle #{title} forFrame #{webframe}".green
  end

  def webView webview, didReceiveIcon: icon, forFrame: webframe
    puts "webView #{webview} didReceiveIcon #{icon} forFrame #{webframe}".green
  end

  # Error Messages

  def webView webview, didFailProvisionalLoadWithError: error, forFrame: webframe
    puts "webView #{webview} didFailProvisionalLoadWithError #{error} forFrame #{webframe}".green
  end

  def webView webview, didFailLoadWithError: error, forFrame: webframe
    puts "webView #{webview} didFailLoadWithError #{error} forFrame #{webframe}".green
  end

  # Client and Server Redirect Messages

  def webView webview, didCancelClientRedirectForFrame: webframe
    puts "webView #{webview} didCancelClientRedirectForFrame #{webframe}".green
  end

  def webView webview, willPerformClientRedirectToURL: url, delay: delay, fireDate: date, forFrame: webframe
    puts "webView #{webview} willPerformClientRedirectToURL #{url} delay #{delay} fireDate #{date} forFrame #{webframe}".green
  end

  def webView webview, didReceiveServerRedirectForProvisionalLoadForFrame: webframe
    puts "webView #{webview} didReceiveServerRedirectForProvisionalLoadForFrame #{webframe}".green
  end

  # WebScript Messages

  def webView webview, didClearWindowObject: webscriptobject, forFrame: webframe
    puts "webView #{webview} didClearWindowObject #{webscriptobject} forFrame #{webframe}".green
  end

end
