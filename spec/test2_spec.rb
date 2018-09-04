require_relative "../util/spec_helper"

describe "Google.com" do
  it "searches for Selenium Testing" do
  	base_url = "https://www.google.com/"
    @browser.get(base_url)
  end
end
