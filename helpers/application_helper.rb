module ApplicationHelper
  def svg_image_tag(path, options = {})
    options[:'data-svgfallback'] = path.gsub(/\.svg$/, '.png')
    image_tag(path, options).html_safe
  end
end
