require_relative "../config/spec_helper"

describe "Google.com" do
  it "resolves to google.com" do
  	base_url = "https://www.google.com/"
    @browser.get(base_url)
    site_title = @browser.title
    expect(site_title).to eq("Google")
  end
end
