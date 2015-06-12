# --------------------------------------------------------------------------------------------------
# Helpers
# --------------------------------------------------------------------------------------------------

Dir['helpers/**/*_helper.rb'].each do |file|
  require file
  helpers File.basename(file, ".rb").classify.constantize
end

# --------------------------------------------------------------------------------------------------
# Extensions
# --------------------------------------------------------------------------------------------------

# Use LiveReload
activate :livereload

# Use Search Engine Sitemap
set :url_root, data.config.site.root_url
activate :search_engine_sitemap

# User Bower to manage vendor scripts
activate :bower


# --------------------------------------------------------------------------------------------------
# Paths
# --------------------------------------------------------------------------------------------------

set :css_dir,      'assets/stylesheets'
set :js_dir,       'assets/javascripts'
set :images_dir,   'assets/images'
set :fonts_dir,    'assets/fonts'
set :partials_dir, 'partials'

# Pretty URLs - See https://middlemanapp.com/advanced/pretty_urls/
activate :directory_indexes


# --------------------------------------------------------------------------------------------------
# Build configuration
# --------------------------------------------------------------------------------------------------

configure :build do
  # Exclude any vendor components (bower or custom builds) in the build
  ignore 'stylesheets/vendor/*'
  ignore 'javascripts/vendor/*'

  activate :gzip

  # Minify CSS
  activate :minify_css

  # Minify Javascript
  activate :minify_javascript

  # Minify HTML
  activate :minify_html, {
    remove_quotes: false,
    remove_input_attributes: false,
    remove_http_protocol: false,
    remove_https_protocol: false
  }

  # Compress images (default)
  require "middleman-smusher"
  activate :smusher

  # Compress ALL images (advanced)
  # Before activating the below, follow setup instructions on https://github.com/toy/image_optim
  # activate :imageoptim do |options|
  #   options.pngout = false # set to true when pngout is also installed
  # end

  # Uniquely-named assets (cache buster)
  activate :asset_hash
end
