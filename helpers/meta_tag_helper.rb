module MetaTagHelper
  # Sets the page meta description and keywords, which can be composed by either
  #   a) data in config.yml (which is sitewide), or
  #   b) data set in the FrontMatter of each page

  def meta_keywords
    keywords = set_meta_keywords

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
    description = set_description

    raise 'You must provide a meta description for your site/page!' if description.blank?

    if description.length > 160
      description_too_long = 'Meta description too long!'
      description_too_long << ' Should be between 150-160 characters.'
      description_too_long << " You have: #{description.length}."
      raise description_too_long
    end
    description
  end

  private

  def set_meta_keywords
    if data.page.meta_keywords.blank?
      data.config.site.meta_keywords
    else
      data.page.meta_keywords
    end
  end

  def set_description
    if data.page.meta_description.blank?
      data.config.site.meta_description
    else
      data.page.meta_description
    end
  end
end
