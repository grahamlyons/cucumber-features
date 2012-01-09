Feature: HTTP request

    Scenario: Make a successful HTTP request
        Given that I want to test Cucumber
        When I make a request for "http://gram.no.de" 
        Then I should get a successful response

    Scenario Outline: Get expected response headers
        Given that I want to test Cucumber
        When I make a request for "http://gram.no.de" 
        Then I should get a "<header>" in the response

    Examples:
        |header|
        |Content-length|
        |Etag|
