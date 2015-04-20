module PageTitleHelper
  # Sets the page title which is composed of 3 elements
  #   1) The Site name
  #   2) A separator
  #   3) The title of each page

  def site_title
    "Middleman Basis"
  end

  def title_separator
    " &mdash; "
  end

  def render_page_title
    title = current_page.data.title

    if title.nil? || title.empty?
      raise RuntimeError, "You must provide a page title for your page!"
    end

    if current_resource.url == "/"
      site_title + title_separator + title
    else
      title + title_separator + site_title
    end
  end
end
