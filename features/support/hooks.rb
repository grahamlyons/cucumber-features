require 'capybara/mechanize/cucumber'

Capybara.app_host = "localhost"
Capybara.register_driver :mechanize do |app|
    driver = Capybara::Driver::Mechanize.new(app)
    driver
end
Capybara.default_driver = :mechanize
