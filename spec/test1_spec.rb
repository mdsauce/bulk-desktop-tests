require_relative "../util/spec_helper"

describe "Google.com" do
  it "resolves to google.com" do
  	base_url = "https://www.google.com/"
    @browser.get(base_url)
  end
end
