module MessageViewWebPolicyDelegate

  # Making Content Decisions

  def self.webView webview, decidePolicyForMIMEType: type, request: request, frame: webframe, decisionListener: listener
    puts "webView #{webview} decidePolicyForMIMEType #{type} request #{request} frame #{webframe} decisionListener #{listener}".red
  end

  # Making Navigation Decisions

  def self.webView webview, decidePolicyForNavigationAction: action, request: request, frame: webframe, decisionListener: listener
    puts "webView #{webview} decidePolicyForNavigationAction #{action} request #{request} frame #{webframe} decisionListener #{listener}".red
  end

  # Making New Window Decisions

  def self.webView webview, decidePolicyForNewWindowAction: action, request: request, newFrameName: name, decisionListener: listener
    puts "webView #{webview} decidePolicyForNewWindowAction #{action} request #{request} newFrameName #{name} decisionListener #{listener}".red
  end

  # Handling Errors

  def self.webView webview, unableToImplementPolicyWithError: error, frame: webframe
    puts "webView #{webview} unableToImplementPolicyWithError #{error} frame #{webframe}".red
  end

end
