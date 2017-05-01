class GetBrowserData < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def browser_data
      {
        "Web Browser" => {
          "Chrome" => "90",
          "Firefox" => "14",
          "Safari" => "5",
          "IE/Edge" => "4",
          "Other" => "2"
        },
        "Screen Resolution" => {
          "1366x768" => "35",
          "1920x1080" => "17",
          "1280x1024" => "5",
          "1280x800" => "4",
          "Other" => "39"
        },
        "last_update" => "May, 2017",
        "data_source" => {
          "name" => "W3",
          "url" => "https://www.w3schools.com/Browsers/default.asp"
        }
      }
    end
  end
end
