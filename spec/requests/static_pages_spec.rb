require 'spec_helper'

describe "Static Pages"  do
  subject {page}
    

	describe "Home page" do
    before {visit root_path}
		it {should have_selector('h1', text: "Sample App")}
  	it {should have_selector('title', text: "Ruby on Rails Tutorial Sample App")}
  	it {should_not_have_selector('title', text: '| Home')}
  end

  describe "Help page" do
    before {visit root_path}
    it {should have_selector('h1', text: "Help")}
    it {should have_selector('title', text: full_title('Help'))}

  end

  describe "About page" do
    before {visit root_path}
    it {should have_selector('h1', text: "About")}
    it {should have_selector('title', text: full_title('About Us'))}

  end


  describe "Contact page" do
    before {visit root_path}
    it {should have_selector('h1', text: "Contact")}
    it {should have_selector('title', text: full_title('Contact'))}

  end
end