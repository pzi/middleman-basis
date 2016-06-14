module PageTitleHelper
  # Sets the page title which is composed of 3 elements
  #   1) The Site name
  #   2) A separator
  #   3) The title of each page

  def site_title
    data.config.site.title
  end

  def title_separator
    data.config.site.title_separator
  end

  def render_page_title
    title = current_page.data.title

    raise 'You must provide a page title for your page!' if title.blank?

    if current_resource.url == '/'
      "#{site_title} #{title_separator} #{title}"
    else
      "#{title} #{title_separator} #{site_title}"
    end
  end
end
