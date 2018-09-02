require_relative "../util/spec_helper"

describe "MyWay Search for Shoes" do
  it "look at Image results" do
    base_url = "https://search.myway.com/search/GGmain.jhtml?p2=&ptb=&n=&cn=US&ln=en&si=&tpr=hpsb&trs=org&brwsid=ad2445e7-4a28-467e-8448-4f3bbb17188c&searchfor=shoes&st=hp"
    @browser.get(base_url)
    
    # @browser.find_element(:xpath => "//a[@ul-attr-accn='Images']").displayed?

    # @browser.find_element(:xpath => "//span[text()='Images']").click

    @browser.find_element(:link, 'Images').click
  end
end
