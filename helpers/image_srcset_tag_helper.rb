module ImageSrcsetTagHelper

  # Source: https://gist.github.com/mrreynolds/4fc71c8d09646567111f
  #
  # Acts as a thin wrapper for image_tag and generates an srcset attribute for regular image tags
  # for usage with responsive images polyfills. Supports asset pipeline path helpers.
  #
  # == Usage
  #
  # image_set_tag 'pic_1980.jpg', { 'pic_640.jpg' => '640w', 'pic_1024.jpg' => '1024w' }, sizes: '100vw', class: 'my-image'
  #
  # => <img src="/assets/ants_1980.jpg" srcset="/assets/pic_640.jpg 640w, /assets/pic_1024.jpg 1024w" sizes="100vw" class="my-image">

  def image_set_tag(source, srcset = {}, options = {})
    srcset = srcset.map { |src, size| "#{asset_path(:images, src)} #{size}" }.join(', ')
    image_tag(source, options.merge(srcset: srcset))
  end
end
