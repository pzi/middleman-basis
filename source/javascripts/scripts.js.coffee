#= require vendor/modernizr
#= require jquery/dist/jquery

$ ->

  unless Modernizr?.svg
    $('img[src$=svg]').each (index, item) ->          # 1. Find all svg used on the page
      imagePath = $(item).attr('src')                 # 2. Save the current src path
      $(item).attr('src',imagePath.slice(0,-3)+'png') # 3. Replace svg file extension with png
