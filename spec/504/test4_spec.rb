require_relative "../config/spec_helper"

describe "504 Test" do
  it "fails when we hit the 5 min mark" do
  	base_url = "https://www.google.com/"
    @browser.get(base_url)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    query_input =  wait.until {
      @browser.find_element(:name, "q")
    }
    Selenium::WebDriver::Wait.new(timeout: 30).until { yield }
    query_input.send_keys 'Selenium Testing', :enter
    
    Selenium::WebDriver::Wait.new(timeout: 30).until { yield }
    selenium_url = wait.until {
      @browser.find_element(:link_text, "Introduction — Selenium Documentation")
    }
    selenium_url.click
    Selenium::WebDriver::Wait.new(timeout: 30).until { yield }
    textbook_link = wait.until {
      @browser.find_element(:link_text, "Test Design Considerations")
    }
    Selenium::WebDriver::Wait.new(timeout: 30).until { yield }
    textbook_link.location_once_scrolled_into_view
    Selenium::WebDriver::Wait.new(timeout: 30).until { yield }
    textbook_link.click

    # test should be close to 3 minutes in duration at this point.
  end
end
