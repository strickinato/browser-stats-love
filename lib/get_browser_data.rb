class GetBrowserData < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def browser_data
      {
        "desktop-usa" => {
          "Chrome" => "57",
          "IE" => "13",
          "Firefox" => "11",
          "Safari" => "10",
          "Other" => "9"
        },
        "desktop-world" => {
          "Chrome" => "64",
          "Firefox" => "13",
          "IE" => "8",
          "Safari" => "6",
          "Other" => "9"
        },
        "mobile-usa" => {
          "Safari" => "52",
          "Chrome" => "38",
          "Samsung" => "6",
          "UC" => "1",
          "Other" => "3"
        },
        "mobile-world" => {
          "Chrome" => "50",
          "Safari" => "18",
          "UC" => "15",
          "Samsung" => "7",
          "Other" => "10"
        },
        "last_update" => "November, 2017",
        "data_source" => {
          "name" => "Global Stats",
          "url" => "http://gs.statcounter.com/"
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
      when "IE"
        "ie.svg"
      when "UC"
        "uc.svg"
      when "Samsung"
        "samsung.png"
      when "Android"
        "android.png"
      when "Other"
        "palmTreeIcon.svg"

      else
        # Won't happen
        ""
      end
    end
  end
end
