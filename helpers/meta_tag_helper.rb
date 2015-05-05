module MetaTagHelper
  # Sets the page meta description and keywords, which can be composed by either
  #   a) data in config.yml (which is sitewide), or
  #   b) data set in the FrontMatter of each page

  def meta_keywords
    site_keywords = data.config.site.meta_keywords
    page_keywords = data.page.meta_keywords

    if page_keywords.nil? || page_keywords.empty?
      keywords = site_keywords
    else
      keywords = page_keywords
    end

    if keywords.is_a?(String)
      # Thanks to @jordanmaguire for the help on this
      keywords = keywords.split(",").map(&:strip)
    end

    if keywords.nil? || keywords.empty?
      raise RuntimeError, "You must provide meta keywords for your site/page!"
    elsif keywords.count > 15
      raise RuntimeError, "Too many meta keywords! Should be between 10-15 terms. You have: #{keywords.count}"
    end

    keywords.join(", ")
  end

  def meta_description
   site_description = data.config.site.meta_description
   page_description = data.page.meta_description

    if page_description.nil? || page_description.empty?
      description = site_description
    else
      description = page_description
    end

    if description.nil? || description.empty?
      raise RuntimeError, "You must provide a meta description for your site/page!"
    elsif description.length > 160
      raise RuntimeError, "Meta description too long! Should be between 150-160 characters. You have: #{description.length}"
    else
      description
    end
  end
end
