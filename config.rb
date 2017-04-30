class GetBrowserData < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def browser_data
      {
        "Web Browser" => {
          "Chrome" => "75",
          "Firefox" => "14",
          "Safari" => "5",
          "Other" => "2",
          "IE/Edge" => "4"
        },
        "Screen Resolution" => {
          "1366x768" => "35",
          "1920x1080" => "17",
          "1280x1024" => "5",
          "1280x800" => "4",
          "Other" => "39"
        },
        "last_update" => "April, 2017",
        "data_source" => {
          "name" => "W3",
          "url" => "https://www.w3schools.com/Browsers/default.asp"
        }
      }
    end
  end
end

::Middleman::Extensions.register(:get_browser_data, GetBrowserData)
# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :get_browser_data

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :asset_hash

  activate :asset_host, :host => '//diiw6giofs1ow.cloudfront.net'
end

