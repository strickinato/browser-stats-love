class GetBrowserData < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def browser_data
      {
        "desktop-usa" => {
          "Chrome" => "56",
          "IE" => "14",
          "Firefox" => "12",
          "Safari" => "10",
          "Other" => "8"
        },
        "desktop-world" => {
          "Chrome" => "53",
          "Safari" => "15",
          "UC" => "8",
          "Firefox" => "6",
          "Other" => "18"
        },
        "mobile-usa" => {
          "Safari" => "51",
          "Chrome" => "39",
          "Samsung" => "6",
          "Android" => "1",
          "Other" => "3"
        },
        "mobile-world" => {
          "Chrome" => "50",
          "Safari" => "18",
          "UC" => "16",
          "Samsung" => "7",
          "Other" => "9"
        },
        "last_update" => "July, 2017",
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
