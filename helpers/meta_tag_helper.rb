module MetaTagHelper
  # Sets the page meta description and keywords, which can be composed by either
  #   a) data in config.yml (which is sitewide), or
  #   b) data set in the FrontMatter of each page

  def meta_keywords
    site_keywords = data.config.site.meta_keywords
    page_keywords = data.page.meta_keywords

    keywords = if page_keywords.blank?
                 site_keywords
               else
                 page_keywords
               end

    if keywords.is_a?(String)
      # Thanks to @jordanmaguire for the help on this
      keywords = keywords.split(',').map(&:strip)
    end

    raise 'You must provide meta keywords for your site/page!' if keywords.blank?

    if keywords.count > 15
      raise "Too many meta keywords! Should be between 10-15 terms. You have: #{keywords.count}"
    end

    keywords.join(', ')
  end

  def meta_description
    site_description = data.config.site.meta_description
    page_description = data.page.meta_description

    description = if page_description.blank?
                    site_description
                  else
                    page_description
                  end

    if description.blank?
      raise 'You must provide a meta description for your site/page!'
    end

    if description.length > 160
      description_too_long = 'Meta description too long!'
      description_too_long << ' Should be between 150-160 characters.'
      description_too_long << " You have: #{description.length}."
      raise description_too_long
    else
      description
    end
  end
end
