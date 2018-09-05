require_relative "../../config/spec_helper"

describe "504 Test" do
  it "fails when we hit the 5 min mark" do
  	base_url = "https://www.google.com/"
    @browser.get(base_url)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    sleep(30)
    query_input = wait.until { @browser.find_element(:name, "q") }
    sleep(30)
    query_input.send_keys 'Selenium Testing', :enter
    sleep(30)
    selenium_url = wait.until { @browser.find_element(:link_text, "Introduction — Selenium Documentation") }
    sleep(30)
    selenium_url.click
    sleep(30)
    textbook_link = wait.until { @browser.find_element(:link_text, "Test Design Considerations") }
    sleep(30)
    textbook_link.location_once_scrolled_into_view
    sleep(30)
    textbook_link.click

    # test should be close to 3 minutes in duration at this point.
    # do it again
    sleep(15)
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

    # another one
    sleep(30)
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

    sleep(10)

    # another one
    # just in case
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

    # one more
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

    # one more
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

    # one more
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
