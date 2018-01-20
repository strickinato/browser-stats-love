class GetBrowserData < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def browser_data
      {
        "desktop-usa" => {
          "Chrome" => "61",
          "Safari" => "11",
          "Firefox" => "10",
          "IE" => "10",
          "Other" => "8"
        },
        "desktop-world" => {
          "Chrome" => "66",
          "Firefox" => "12",
          "IE" => "7",
          "Safari" => "6",
          "Other" => "9"
        },
        "mobile-usa" => {
          "Safari" => "52",
          "Chrome" => "41",
          "Samsung" => "5",
          "Android" => "1",
          "Other" => "1"
        },
        "mobile-world" => {
          "Chrome" => "50",
          "Safari" => "18",
          "UC" => "15",
          "Opera" => "6",
          "Other" => "11"
        },
        "last_update" => "January, 2018",
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
      when "Opera"
        "Opera.svg"
      when "Other"
        "palmTreeIcon.svg"

      else
        # Won't happen
        ""
      end
    end
  end
end
