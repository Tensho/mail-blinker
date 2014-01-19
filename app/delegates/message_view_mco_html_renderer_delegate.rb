module MessageViewMCOHTMLRendererDelegate

  # Other Methods

    def self.MCOAbstractMessage(message, templateForAttachment:abstract_part)
    <<-TEMPLATE.strip
      {{#HASSIZE}}{{UNIQUEID}}{{FILENAME}}{{SIZE}}{{/HASSIZE}}
      {{#NOSIZE}}{{UNIQUEID}}{{FILENAME}}{{/NOSIZE}}
      {{UNIQUEID}}
    TEMPLATE
  end

  def self.MCOAbstractMessage(message, templateForImage:abstract_part)
    <<-TEMPLATE.strip
      <a href="{{UNIQUEID}}"><div><img src="x-mailcore-image:{{UNIQUEID}}" width="200" align="top" hspace="5"></div></a>
    TEMPLATE
  end

  def self.MCOAbstractMessage message, canPreviewPart: part
    puts __callee__.to_s.light_blue
  end

  def self.MCOAbstractMessage message, shouldShowPart: part
    puts __callee__.to_s.light_blue
  end

  def self.MCOAbstractMessage message, templateValuesForHeader: header
    puts __callee__.to_s.light_blue
  end

  def self.MCOAbstractMessage message, templateValuesForPart: part
    puts __callee__.to_s.light_blue
  end

  # Template Methods

  def self.MCOAbstractMessage message, templateForMainHeader: header
    puts __callee__.to_s.light_blue
  end

  # def self.MCOAbstractMessage message, templateForImage: header
  #   puts __callee__.to_s.light_blue
  # end

  # def self.MCOAbstractMessage message, templateForAttachment: part
  #   puts __callee__.to_s.light_blue
  # end

  def self.MCOAbstractMessage_templateForMessage message
    puts __callee__.to_s.light_blue
  end

  def self.MCOAbstractMessage message, templateForEmbeddedMessage: header
    puts __callee__.to_s.light_blue
  end

  def self.MCOAbstractMessage message, templateForEmbeddedMessageHeader: header
    puts __callee__.to_s.light_blue
  end

  def self.MCOAbstractMessage_templateForAttachmentSeparator message
    puts __callee__.to_s.light_blue
  end

  # Filters

  def self.MCOAbstractMessage message, filterHTMLForPart: html
    puts __callee__.to_s.light_blue
  end

  def self.MCOAbstractMessage message, filterHTMLForMessage: html
    puts __callee__.to_s.light_blue
  end

end
