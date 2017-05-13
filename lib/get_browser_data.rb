class GetBrowserData < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def browser_data
      {
        "Web Browser" => {
          "Chrome" => "45",
          "Safari" => "32",
          "IE" => "7",
          "Firefox" => "7",
          "Other" => "9"
        },
        "World" => {
          "Chrome" => "53",
          "Safari" => "15",
          "UC" => "8",
          "Firefox" => "6",
          "IE" => "4"
        },
        "Screen Resolution" => {
          "1366 x 768" => "35",
          "1920 x 1080" => "17",
          "1280 x 1024" => "5",
          "1280 x 800" => "4",
          "Mobile" => "39"
        },
        "World Resolution" => {
          "360 x 640" => "20",
          "1366 x 768" => "13",
          "1920 x 1080" => "7",
          "375 x 667" => "5",
          "730 x 1280" => "4"
        },
        "last_update" => "May, 2017",
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
      when "Other"
        "palmTreeIcon.svg"
      else
        # Won't happen
        ""
      end
    end
  end
end
