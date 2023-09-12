Feature: 2.4.2.4 Simple example

Background: 
Given application URL is opened

@Smoke
Scenario: 2.4.2.4_01 Main scenario: user should be able to be register using the form
	Given user entered "Maria" into "Name" input
	And user entered "maria.ivanova@gmail.com" into "Email" input
	And user entered "Qwerty13" into "Password" input
	When user clicks on the "Create" button
	Then "Home page" should become visible
	