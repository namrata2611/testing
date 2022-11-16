Feature: User authentication at login page 
       
        We will go through all the possibilites user might face while logging in a Web portal

    Background: 

        Given the user is already registered to the website 
        Given the user is on the login page 


    Scenario: Login atttempt successful

        When the user inputs the correct Email id 

            And the user inputs the correct Password

            And the user clicks on the login button 

        Then the user should be authenticated 

            And the user should be redirected to the MFA Page 


    Scenario: Login attempt unsuccessful after incorrect username or password.   

        When the user inputs the correct <Right Input>

        But the user inputs the incorrect <Wrong Input>

            And the user successfully completes MFA verification 

            And the user clicks on the login button 

        Then the user should not be authenticated

            And the user should be presented with a "Username or Password is incorrect" Message 

        Example: 
            | Right Input | Wrong Input  | 
            | Email id    | Password     |
            | Password    | Email id     |


    Scenario: Login attempt unsuccessful after wrong username or password fields.  
  
        When the user inputs the <Filled input>

        But the user keeps <Blank input> blank

        Then the user will not be able to click the login button 

            And the user should not be authenticated

            And the user should be presented with a astrik sign where input fields are blank

        Example: 
            | Filled input | Blank input | 
            | Email id     | Password    |
            | Password     | Email id    |


    Scenario: Login attempt unsuccessful after blank username or password.   

        When the user keeps Email id blank

            And the user keeps Password blank

        Then the user will not be able to click the login button 

            And the user should not be authenticated

            And the user should be presented with a astrik sign where input filleds are blank



 

