###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def site_title
    "Middleman Basis"
  end

  def title_separator
    " &mdash; "
  end

  def render_page_title(title, current_page_url)
    if title.nil? || title.empty?
      raise RuntimeError, "You must provide a page title for your page!"
    end

    if current_page_url == "/"
      site_title + title_separator + title
    else
      title + title_separator + site_title
    end
  end

  def nav_active(url)
    active_nav_class = "current"

    if (url.instance_of? String)
      current_resource.url == url_for(url) ? {class: active_nav_class} : {}
    elsif (url.instance_of? Array)
      url.map { |url| url_for(url) }.include?(current_resource.url) ? {class: active_nav_class} : {}
    else
      {}
    end
  end

  # Source: https://gist.github.com/mrreynolds/4fc71c8d09646567111f
  #
  # Acts as a thin wrapper for image_tag and generates an srcset attribute for regular image tags
  # for usage with responsive images polyfills. Supports asset pipeline path helpers.
  #
  # image_set_tag 'pic_1980.jpg', { 'pic_640.jpg' => '640w', 'pic_1024.jpg' => '1024w' }, sizes: '100vw', class: 'my-image'
  #
  # => <img src="/assets/ants_1980.jpg" srcset="/assets/pic_640.jpg 640w, /assets/pic_1024.jpg 1024w" sizes="100vw" class="my-image">
  #
  def image_set_tag(source, srcset = {}, options = {})
    srcset = srcset.map { |src, size| "#{asset_path(:images, src)} #{size}" }.join(', ')
    image_tag(source, options.merge(srcset: srcset))
  end
end

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# --------------------------------------------------------------------------------------------------
# Extensions
# --------------------------------------------------------------------------------------------------

# Use LiveReload
activate :livereload

# Use Search Engine Sitemap
set :url_root, 'http://www.example.com'
activate :search_engine_sitemap

# User Bower to manage vendor scripts
activate :bower


# --------------------------------------------------------------------------------------------------
# Paths
# --------------------------------------------------------------------------------------------------

set :css_dir,     'stylesheets'
set :fonts_dir,   'fonts'
set :images_dir,  'images'
set :js_dir,      'javascripts'

# Pretty URLs - See https://middlemanapp.com/advanced/pretty_urls/
activate :directory_indexes


# --------------------------------------------------------------------------------------------------
# Build configuration
# --------------------------------------------------------------------------------------------------

configure :build do
  # Exclude any vendor components (bower or custom builds) in the build
  ignore 'stylesheets/vendor/*'
  ignore 'javascripts/vendor/*'

  # Minify CSS
  activate :minify_css

  # Minify Javascript
  activate :minify_javascript

  # Minify HTML
  activate :minify_html, {
    remove_quotes: false,
    remove_input_attributes: false
  }

  # Compress PNGs after build
  require "middleman-smusher"
  activate :smusher

  # Compress and optimise all images
  # Requires homebrew to install additional software
  # Before activing the below, run:
  #   brew install advancecomp gifsicle jhead jpegoptim jpeg optipng pngcrush
  # activate :imageoptim

  # Uniquely-named assets (cache buster)
  # Exception: svg & png in images folder because they need to be interchangeable by JS
  activate :asset_hash, ignore: [/images\/(.*\.png|.*\.svg)/]
end
