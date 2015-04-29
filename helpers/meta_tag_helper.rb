module MetaTagHelper
  # Sets the page title which is composed of 3 elements
  #   1) The Site name
  #   2) A separator
  #   3) The title of each page

  def meta_keywords
    site_keywords = data.config.site.meta_keywords
    page_keywords = data.page.meta_keywords

    if page_keywords.nil? || page_keywords.empty?
      keywords = site_keywords
    else
      keywords = page_keywords
    end

    if keywords.nil? || keywords.empty?
      raise RuntimeError, "You must provide meta keywords for your site/page!"
    end

    [*keywords].join(", ")
  end

  def meta_description
    description = data.page.meta_description || data.config.site.meta_description

    if description.nil? || description.empty?
      raise RuntimeError, "You must provide a meta description for your site/page!"
    elsif description.length > 160
      raise RuntimeError, "Meta description too long! Should be between 150-160 characters."
    end
  end
end
