module InsteddRails
  module ApplicationHelper
    def link_button_to(body, url, html_options = {})
      default_options = { :type => 'button', :class => 'white' }
      onclick = "window.location='#{url}';return false;"
      
      content_tag(:button, body, default_options.merge(html_options.merge(:onclick => onclick)))
    end

    def section title, url, name, active_controllers = [name]
      active = active_controllers.any?{|controller| controller_name == controller.to_s }
      raw "<li class=\"#{active ? "active" : ""}\">#{link_to title, url}</li>"
    end
    
    def breadcrumb
      raw render_breadcrumbs :builder => BreadcrumbBuilder
    end
    
    def sortable(column, title = nil)
      title ||= column.titleize
      page_number = params[:page]
      direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
      (link_to title, :sort => column, :direction => direction, :page => params[:page]) + '<span></span>'.html_safe
    end
    
    def css_sort_class_for column
      column == sort_column ? "sort #{css_sort_direction}" : "sort"
    end
    
    def css_sort_direction
      sort_direction == "asc" ? "up" : "down"
    end

    def application_name
        Instedd::Rails.config.application_name
    end
  end
end