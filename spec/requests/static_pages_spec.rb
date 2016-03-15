require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  	before { visit '/static_pages/home' }


 	it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    	end

    it "should have the content 'Sample App'" do
      	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    	end
    end

  describe "Help page" do
    	it "should have the content 'Help'" do
      		visit static_pages_help_path
      		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    	end
    end

  describe "About page" do
    	it "should have the content 'About Us'" do
      		visit static_pages_about_path
      		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

    describe "Contact page" do
    	it "should have the content 'Contact'" do
      		visit static_pages_contact_path
      		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end