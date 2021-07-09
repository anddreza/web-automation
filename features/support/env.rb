require "capybara"
require "capybara/cucumber"
require "faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome 
    config.default_max_wait_time = 10
    config.app_host = "htpp://rocklov-web:3000"
end 