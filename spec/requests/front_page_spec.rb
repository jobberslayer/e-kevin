require 'spec_helper'

describe "FrontPage" do
  describe "GET /" do
    it "works!" do
      get root_path
      response.status.should be(200)
    end

    it "should have title 'e-Kevin'" do
      visit root_path
      page.should have_selector('title', text: 'e-Kevin')

      page.find('#badge_url')['href'].should eq('https://www.facebook.com/klester')
    end
  end
end
