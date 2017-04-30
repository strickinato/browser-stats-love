# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

require 'lib/get_browser_data'
::Middleman::Extensions.register(:get_browser_data, GetBrowserData)

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :livereload

activate :google_analytics do |ga|
  ga.tracking_id = "UA-98352593-1"
end

activate :get_browser_data

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
configure :build do
  activate :asset_hash

  activate :asset_host, :host => '//diiw6giofs1ow.cloudfront.net'
end

