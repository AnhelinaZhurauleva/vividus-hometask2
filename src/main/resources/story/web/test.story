Scenario: Open application under test
Given I am on the main application page

Scenario: Create Account
When I click on all elements located `By.xpath(//span[text()="Account"])`
When I click on an element with the text 'Sign In'
When I click on all elements located `By.xpath(//*[text()="Create account"])`
When I enter `#{generate(Name.firstName)}` in field located `By.xpath(//*[@id="first-name-su"])`
When I enter `#{generate(Name.lastName)}` in field located `By.xpath(//*[@id="last-name-su"])`
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//*[@id="email-su"])`
When I enter `#{generate(regexify '[a-z]{5}[A-Z]{2}[1-9]{3}')}` in field located `By.xpath(//*[@id="password-su"])`
When I click on element located `By.xpath(//*[@id="sign-up-form"]/button[1])`
Then the page with the URL containing 'https://www.walmart.com/' is loaded

Scenario: Perform search for product by search box
When I click on all elements located `By.xpath(//*[@type="search"])`
When I enter `Jingle All the Way Walmart Gift Card` in field located `By.xpath(//*[@type="search"])`
When I click on all elements located `By.xpath(//button[@class='absolute bn br-100 bg-gold h3 w3'])`
Then the page with the URL containing 'https://www.walmart.com/search/' is loaded

Scenario: Open product page for product from previous step
When I click on an element with the text `Jingle All the Way Walmart Gift Card`
Then the page with the URL containing 'https://www.walmart.com/ip/' is loaded

Scenario: Add product to cart
When I click on all elements located `By.xpath(//span[text()="Add to cart"])`
Then the page with the URL containing 'https://www.walmart.com/' is loaded

Scenario: Navigate to cart
When I click on all elements located `By.xpath(//button[contains(@class,"bn bg-transparent")])`
Then the page with the URL containing 'https://www.walmart.com/' is loaded