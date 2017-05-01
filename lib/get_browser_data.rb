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
          "Safari" => "4",
          "IE/Edge" => "4",
          "Other" => "3"
        },
        "Screen Resolution" => {
          "1366 x 768" => "35",
          "1920 x 1080" => "17",
          "1280 x 1024" => "5",
          "1280 x 800" => "4",
          "Mobile" => "39"
        },
        "last_update" => "May, 2017",
        "data_source" => {
          "name" => "W3",
          "url" => "https://www.w3schools.com/Browsers/default.asp"
        }
      }
    end

    def get_asset(browser)
      case browser
      when "Chrome"
        "chrome.svg"
      when "Firefox"
        "firefox.svg"
      when "Safari"
        "safari.svg"
      when "IE/Edge"
        "ie.svg"
      when "Other"
        "palmTreeIcon.svg"
      else
        # Won't happen
        ""
      end
    end
  end
end
