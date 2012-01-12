Given /^that I want to test Cucumber$/ do
    #context
end

When /^I make a request for "([^"]*)"$/ do |url|
    visit(url)
end

Then /^I should get a successful response$/ do
    #context
end

Then /^I should get a "([^"]*)" in the response$/ do |header|
    page.response_headers.has_key?(header.downcase).should == true
end
