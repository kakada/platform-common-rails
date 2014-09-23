module DeviseHelper  
  def devise_error_messages!(html_options = {})
    return if resource.errors.full_messages.empty?
    
    (content_tag :div, :class => "box error_description #{html_options[:class] || 'w60'}"  do
      (content_tag :h2, t("following_errors_ocurred", default: 'The following errors occurred')) \
      + \
      (content_tag :ul do
        raw resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
      end)
    end)
  end
end