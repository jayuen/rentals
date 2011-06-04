module FormsHelper
  def input field, label, options={}
    options[:width] ||= "500px"
    <<-HTML.html_safe
      <div style="display:inline;height:100%;float:left">
      <div style="font-size:11px;width:#{options[:width]}px">#{label}</div>
      <input  type='text' id='form_#{field}' name="form[#{field}]" style='width:#{options[:width]}px'/>
      </div>
    HTML
  end
end
