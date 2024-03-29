class StringInput < Formtastic::Inputs::StringInput

  def to_html
    if self.errors? || self.hint?
      lines = []
      lines = [self.hint_text] if self.hint_text.present?
      lines += self.errors
      lines = lines.join("<br/>")
      return "<div class='fg-float form-group #{'has-error' if self.errors?}'>#{super}<span class='help-block'>#{lines}</span></div>".html_safe
    else
      return "<div class='fg-float form-group'>#{super}</div>".html_safe
    end
  end

  def hint_html
    ""
  end

  def error_html
    ""
  end

  def input_html_options
    super.merge(:class => "form-control fg-input")
  end

  def wrapper_html_options
    super.merge(:class => "fg-line")
  end

  def label_html_options
    super.merge(:class => "fg-label")
  end
end
