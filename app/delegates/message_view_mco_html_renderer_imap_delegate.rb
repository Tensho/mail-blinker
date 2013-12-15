module MessageViewMCOHTMLRendererIMAPDelegate

  def self.MCOAbstractMessage message, dataForIMAPPart: part, folder: folder
    puts "MCOAbstractMessage #{message} dataForIMAPPart #{part} folder #{folder}"
  end

  def self.MCOAbstractMessage message, prefetchAttachmentIMAPPart: part, folder: folder
    puts "MCOAbstractMessage #{message} prefetchAttachmentIMAPPart #{part} folder #{folder}"
  end

  def self.MCOAbstractMessage message, prefetchImageIMAPPart: part, folder: folder
    puts "MCOAbstractMessage #{message} prefetchImageIMAPPart #{part} folder #{folder}"
  end

end
