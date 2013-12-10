module MessageViewWebUIDelegate

  # Creating and Closing Windows

  def self.webView webview, createWebViewModalDialogWithRequest: request
    puts "webView #{webview} createWebViewModalDialogWithRequest #{request}".cyan
  end

  def self.webViewRunModal webview
    puts "webViewRunModal #{webview}".cyan
  end

  def self.webView webview, createWebViewWithRequest: request
    puts "webView #{webview} createWebViewWithRequest #{request}".cyan
  end

  def self.webViewClose webview
    puts "webViewClose #{webview}".cyan
  end

  # Moving and Resizing Windows

  def self.webViewIsResizable webview
    puts "webViewIsResizable #{webview}".cyan
  end

  def self.webView webview, setResizable: resizable
    puts "webView #{webview} setResizable #{resizable}".cyan
  end

  def self.webView webview, setFrame: frame
    puts "webView #{webview} setFrame #{frame}".cyan
  end

  def self.webViewFrame webview
    puts "webViewFrame #{webview}".cyan
  end

  # Making Windows Key and Main

  def self.webViewFocus webview
    puts "webViewFocus #{webview}".cyan
  end

  def self.webViewUnfocus webview
    puts "webViewUnfocus #{webview}".cyan
  end

  # Ordering Windows

  def self.webViewShow webview
    puts "webViewShow #{webview}".cyan
  end

  # Working with the Responder Chain

  def self.webViewFirstResponder webview
    puts "webViewFirstResponder #{webview}".cyan
  end

  def self.webView webview, makeFirstResponder: responder
    puts "webView #{webview} makeFirstResponder #{responder}".cyan
  end

  # Handling Mouse Events

  def self.webView webview, mouseDidMoveOverElement: element, modifierFlags: flags
    puts "webView #{webview} mouseDidMoveOverElement #{element} modifierFlags #{flags}".cyan
  end

  def self.webView webview, contextMenuItemsForElement: element, defaultMenuItems: items
    puts "webView #{webview} contextMenuItemsForElement #{element} defaultMenuItems #{items}".cyan
  end

  # Opening Panels

  def self.webView webview, runJavaScriptAlertPanelWithMessage: message, initiatedByFrame: webframe
    puts "webView #{webview} runJavaScriptAlertPanelWithMessage #{message} initiatedByFrame #{webframe}".cyan
  end

  def self.webView webview, runJavaScriptConfirmPanelWithMessage: message, initiatedByFrame: webframe
    puts "webView #{webview} runJavaScriptConfirmPanelWithMessage #{message} initiatedByFrame #{webframe}".cyan
  end

  def self.webView webview, runJavaScriptTextInputPanelWithPrompt: prompt, defaultText: text, initiatedByFrame: webframe
    puts "webView #{webview} runJavaScriptTextInputPanelWithPrompt #{prompt} defaultText #{text} initiatedByFrame #{webframe}".cyan
  end

  def self.webView webview, runOpenPanelForFileButtonWithResultListener: listener
    puts "webView #{webview} runOpenPanelForFileButtonWithResultListener #{listener}".cyan
  end

  def self.webView webview, runOpenPanelForFileButtonWithResultListener: listener, allowMultipleFiles: allow
    puts "webView #{webview} runOpenPanelForFileButtonWithResultListener #{listener} allowMultipleFiles #{allow}".cyan
  end

  def self.webView webview, runBeforeUnloadConfirmPanelWithMessage: message, initiatedByFrame: webframe
    puts "webView #{webview} runBeforeUnloadConfirmPanelWithMessage #{message} initiatedByFrame #{webframe}".cyan
  end

  # Displaying Status Messages

  def self.webView webview, setStatusText: text
    puts "webView #{webview} setStatusText #{text}".cyan
  end

  def self.webViewStatusText text
    puts "webViewStatusText #{text}".cyan
  end

  # Managing Toolbars and the Status Bar

  def self.webViewAreToolbarsVisible webview
    puts "webViewAreToolbarsVisible #{webview}".cyan
  end

  def self.webView webview, setToolbarsVisible: visible
    puts "webView #{webview} setToolbarsVisible #{visible}".cyan
  end

  def self.webViewIsStatusBarVisible webview
    puts "webViewIsStatusBarVisible #{webview}".cyan
  end

  def self.webView webview, setStatusBarVisible: visible
    puts "webView #{webview} setStatusBarVisible #{visible}".cyan
  end

  # Controlling Drag Behavior

  def self.webView webview, dragDestinationActionMaskForDraggingInfo: dragging_info
    puts "webView #{webview} dragDestinationActionMaskForDraggingInfo #{dragging_info}".cyan
  end

  def self.webView webview, dragSourceActionMaskForPoint: point
    puts "webView #{webview} dragSourceActionMaskForPoint #{point}".cyan
  end

  def self.webView webview, willPerformDragDestinationAction: action, forDraggingInfo: dragging_info
    puts "webView #{webview} willPerformDragDestinationAction #{action} forDraggingInfo #{dragging_info}".cyan
  end

  def self.webView webview, willPerformDragSourceAction: action, fromPoint: point, withPasteboard: pasteboard
    puts "webView #{webview} willPerformDragSourceAction #{action} fromPoint #{point} withPasteboard #{pasteboard}".cyan
  end

  # Controlling Other Behaviors

  def self.webView webview, shouldPerformAction: action, fromSender: sender
    puts "webView #{webview} shouldPerformAction #{action} fromSender #{sender}".cyan
  end

  def self.webView webview, validateUserInterfaceItem: item, defaultValidation: validation
    puts "webView #{webview} validateUserInterfaceItem #{item} defaultValidation #{validation}".cyan
  end

  # Printing

  def self.webView webview, printFrameView: webframeview
    puts "webView #{webview} printFrameView #{webframeview}".cyan
  end

  def self.webViewHeaderHeight webview
    puts "webViewHeaderHeight #{webview}".cyan
  end

  def self.webViewFooterHeight webview
    puts "webViewFooterHeight #{webview}".cyan
  end

  def self.webView webview, drawHeaderInRect: rect
    puts "webView #{webview} drawHeaderInRect #{rect}".cyan
  end

  def self.webView webview, drawFooterInRect: rect
    puts "webView #{webview} drawFooterInRect #{rect}".cyan
  end

end
