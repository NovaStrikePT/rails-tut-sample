require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "has the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "has the base title" do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App')
    end
    it "does not have a custom page title 'Home'" do
      visit '/static_pages/home'
      expect(page).not_to have_title(' | Home')
    end
  end
  
  describe "Help page" do
    it "has the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "has the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "has the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "has the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
