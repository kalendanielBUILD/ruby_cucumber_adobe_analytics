require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'



Capybara.match = :first


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, options =
      {
          :prefs => {
              :credentials_enable_service => false,
              :password_manager_enabled => false
          },
          :args => %w(--disable-infobars --disable-save-password-bubble --disable-overlay-scrollbar),
          :browser => :chrome
      }
  )
end
Capybara.default_driver = :selenium




