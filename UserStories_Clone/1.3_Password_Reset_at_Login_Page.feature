Feature: Password Reset at Login Page

        This userstories will help us to understand how will be the password reset process will going to work for the registered users whose password is forgotten.
        Note: This process will be not in use if the user id is in lock or disabled state.

    Background: 

        Given the user is already registered to the website 

    
    Scenario: User forgot the password and trying to reset the password from the login page

        Given the user in the login page 
        
        When user clicks to the forgot Password tab

        Then user should provide the registered Email id

            And Password Reset Mail has been sent to that Email id

            And user inputs the New Password within certain timeframe

            And user should Redirect to the login page to login again


    Scenario: User forgot the password and trying to reset the password from the login page but the Password reset page is timedout

        Given the user in the login page 
        
        When user clicks to the forgot Password tab

        Then user should provide the registered Email id

            And Password Reset Mail has been sent to that Email id

            And user did not input the New Password within certain timeframe

        Then the Password reset Page should Expire

            And should be presented with a "Page timed out!!!"

        
         