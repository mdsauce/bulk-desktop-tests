require_relative "../config/spec_helper"

describe "Google.com" do
  it "searches for Selenium Testing" do
  	base_url = "https://www.google.com/"
    @browser.get(base_url)
    query_input = @browser.find_element(:name, "q")
  end
end
