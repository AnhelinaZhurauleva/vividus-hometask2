Scenario: Open application under test
Given I am on the main application page


Scenario: Sign Up scenario using page elements
When I click on element located 'By.xpath(//a[text()="Sign up"])'
When I enter #{generate(Internet.emailAddress)} in field located 'By.xpath(//input[@name='email'])'
When I click on element located 'By.xpath(//input[@type='submit'])'
When I enter 'Anhelina Zhurauleva' in field located 'By.xpath(//input[@id='displayName'])'
When I enter #{generate(regexify '[A-Za-z0-9]{8}')} in field located 'By.xpath(//input[@id='password'])'
When I click on element located 'By.xpath(//span[text()="Sign up"])'