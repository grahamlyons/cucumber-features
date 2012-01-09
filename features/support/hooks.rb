require 'capybara/mechanize/cucumber'

Capybara.app_host = "localhost"
Capybara.register_driver :mechanize do |app|
    driver = Capybara::Driver::Mechanize.new(app)
    proxy=ENV['http_proxy']
    if proxy:
        proxy=proxy.sub(/^http:\/\//, '')
        parts=proxy.split(':')
        host=parts[0]
        port=parts[1]
        driver.agent.set_proxy(host, port)
    end
    driver
end
Capybara.default_driver = :mechanize
