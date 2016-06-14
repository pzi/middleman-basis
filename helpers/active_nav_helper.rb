module ActiveNavHelper
  # Returns a CSS class if the filename is part of the current URL
  #
  # == Parameters
  #
  #   @param filename [String] of the page to look up
  #
  # == Usage
  #
  #   {nav_active("page.html")}

  def active_navigation_item_class
    data.config.site.active_navigation_item_class
  end

  def nav_active(url)
    if url.instance_of? String
      return { class: active_navigation_item_class } if current_resource.url == url_for(url)
    elsif url.instance_of? Array
      if url.map { |u| url_for(u) }.include?(current_resource.url)
        return { class: active_navigation_item_class }
      end
    end
    {}
  end
end
