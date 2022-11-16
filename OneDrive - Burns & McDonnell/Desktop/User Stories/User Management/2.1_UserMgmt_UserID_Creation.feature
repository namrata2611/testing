Feature: UserID Creation for the Security client portal website

        We will going to create User ID for the Security client portal website, We will be having 3 types of users: SuperAdmin, ClientAdmin, Security Engineer

    Background: 

        Given the user is part of client or the custodian of the operations
        Given the user is in the settings page of the Security client portal website
        Given the SuperAdmin user can create SuperAdmin, ClientAdmin & Security Engineer
        Given the ClientAdmin user can only create Security Engineer
        Given the Security Engineer will not have access to create users


    Scenario: UserID Creation by SuperAdmin Successfully

        When the SuperAdmin user clickes on "create user" button

            And the SuperAdmin user inputs the Full Name of the Newuser

            And the SuperAdmin user inputs the Email ID of the Newuser

            And the SuperAdmin user inputs the Company Name of the Newuser

            And the SuperAdmin user inputs the Designation of the Newuser
    
            And the SuperAdmin user inputs the Phone No. of the Newuser

            And the SuperAdmin user inputs the Company Name of the Newuser

            And the SuperAdmin user checks the <Desired role> role from options

            And the SuperAdmin user clickes on "Create" button

        Then The Newuser should be created and should present with "Newuser Has been created!!" Message

        Example:
            | Desired role      |
            | SuperAdmin        |
            | ClientAdmin       |
            | Security Engineer |


    Scenario: UserID Creation by ClientAdmin Successfully

        When the ClientAdmin user clickes on "create user" button

            And the ClientAdmin user inputs the Full Name of the Newuser

            And the ClientAdmin user inputs the Email ID of the Newuser

            And the ClientAdmin user inputs the Company Name of the Newuser

            And the ClientAdmin user inputs the Designation of the Newuser
    
            And the ClientAdmin user inputs the Phone No. of the Newuser

            And the ClientAdmin user clickes on "Create" button

        Then The Newuser should be created and should present with "New Security Engineer user Has been created!!" Message


    Scenario: Unsuccessfull attempt of UserID Creation by SuperAdmin or ClientAdmin (Blank Field)

        When the user clickes on "create user" button

            And the user Keeps <Blank input> input blank

            And the user clickes on "Create" button

        Then The Newuser should not be created and should present with a astrik sign where input fields are blank

        Example:
            | Blank input  |
            | Full Name    |
            | Email ID     |
            | Company Name |
            | Designation  |
            | Phone No.    |
        

    Scenario:  Unsuccessfull attempt of UserID Creation by SuperAdmin or ClientAdmin (CheckBox not registered)

        When the SuperAdmin user clickes on "create user" button

            And the SuperAdmin user inputs the Full Name of the Newuser

            And the SuperAdmin user inputs the Email ID of the Newuser

            And the SuperAdmin user inputs the Company Name of the Newuser

            And the SuperAdmin user inputs the Designation of the Newuser
    
            And the SuperAdmin user inputs the Phone No. of the Newuser

            And the SuperAdmin user inputs the Company Name of the Newuser

            And the SuperAdmin user checks the SuperAdmin option

            And the SuperAdmin user did not clickes to any of the options

        Then The Newuser should not be created and should present with a astrik sign where options are blank


    



