require_relative "../config/spec_helper"

describe "Hacker News" do
    it "will let us login" do
        base_url = "https://news.ycombinator.com/login"
        @browser.get(base_url)
        wait = Selenium::WebDriver::Wait.new(:timeout => 10)
        username_input = wait.until {
            @browser.find_element(:name, "acct")
        }
        password_input = wait.until {
            @browser.find_element(:name, "pw")
        }
        username_input.send_keys ENV["HACKER_NEWS_USERNAME"]
        password_input.send_keys ENV["HACKER_NEWS_PW"]

        login_button = @browser.find_element(:xpath, "//input[@value='login']")
        login_button.click
    end
end

