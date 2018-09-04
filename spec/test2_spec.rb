require_relative "../config/spec_helper"

describe "Selenium Info" do
  it "can be found from Google.com" do
  	base_url = "https://www.google.com/"
    @browser.get(base_url)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    query_input =  wait.until {
      @browser.find_element(:name, "q")
    }
    query_input.send_keys 'Selenium Testing', :enter

    selenium_url = wait.until {
      @browser.find_element(:link_text, "Introduction — Selenium Documentation")
    }
    selenium_url.click
    textbook_link = wait.until {
      @browser.find_element(:link_text, "Test Design Considerations")
    }
    textbook_link.location_once_scrolled_into_view
    textbook_link.click
  end
end
