Given /^that I want to test Cucumber$/ do
    #context
end

When /^I make a request for "([^"]*)"$/ do |url|
    visit(url)
end

Then /^I should get a successful response$/ do
    #context
end

