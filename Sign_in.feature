Feature: Sign in to the Saucedemo Application

As a user, I want to sign in so I can use application functionality.

Background:
  Given the application is open at "https://www.saucedemo.com/"  

  # Positive Scenarios
  Scenario: Standard user signs in successfully
    When the standard user signs in with username "standard_user" and password "secret_sauce"
    Then they should be logged in successfully

  Scenario: Locked-out user receives the "locked out" message
    When the locked_out_user signs in with username "locked_out_user" and password "secret_sauce"
    Then they should see the message with the text: "Sorry, this user has been locked out"
    
  # Negative Scenarios
  Scenario: User tries to sign in with an invalid username
    When the user signs in with an invalid username "invalid_username" and a valid password "secret_sauce"
    Then they should see an error message indicating invalid credentials
    
  Scenario: User tries to sign in with an invalid password
    When the user signs in with a valid username "standard_user" and an invalid password "invalid_password"
    Then they should see an error message indicating invalid credentials
  
    
  # Regression Testing
  Scenario: Standard user signs in after a system update
    Given the application has been updated
    When the standard user signs in with username "standard_user" and password "secret_sauce"
    Then they should be logged in successfully

  # Smoke Testing
  Scenario: Basic sign-in functionality is working
    When a user signs in with a valid username and password
    Then they should be logged in successfully

  # Sanity Testing
  Scenario: The sign-in page loads correctly
    When the user opens the sign-in page
    Then they should see the sign-in form