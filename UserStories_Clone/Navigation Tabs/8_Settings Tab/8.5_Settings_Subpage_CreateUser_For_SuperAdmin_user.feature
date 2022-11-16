Feature: User interations with Settings subpage | Create User
    We will going to take walkthrough of Settings tab Create User subpage objects and how they interact with the user interation.

    Background:

        Given the SuperAdmin user is part of client or the custodian of the operations
        Given the SuperAdmin user is in the Settings main page of the CLIP webpage
        Given the SuperAdmin user can create SuperAdmin, ClientAdmin & Security Engineer
        Given the ClientAdmin user can only create Security Engineer
        Given the Security Engineer will not have access to create users


    Scenario: Interacting the Create User subpage of the settings tab

        When SuperAdmin user clicks to the Create User tab

        Then it will display the Create user card containing (First Name, Last Name, Email ID, Organization Name, Designation, Phone no.)

        And also it has radio button filed for selecting the user types (SuperAdmin, ClientAdmin, Security Engineer)

        And Create user button for the submittion of the form

    
    Scenario: Creating the user in the Create User subpage of the settings tab

        When the SuperAdmin user clickes on "create user" button

            And the SuperAdmin user inputs the First Name of the Newuser

            And the SuperAdmin user inputs the Last Name of the Newuser

            And the SuperAdmin user inputs the Email ID of the Newuser

            And the SuperAdmin user inputs the Organization Name of the Newuser

            And the SuperAdmin user inputs the Designation of the Newuser
    
            And the SuperAdmin user inputs the Phone No. of the Newuser

            And the SuperAdmin user checks the <Desired role> role from options

            And the SuperAdmin user clickes on "Create" button

        Then The Newuser should be created and should present with "New "<Desired role>" user Has been created!!" Message

        Example:
            | Desired role      |
            | SuperAdmin        |
            | ClientAdmin       |
            | Security Engineer |


    Scenario: Unsuccessfull attempt of UserID Creation by SuperAdmin (Blank Field)

        When the user clickes on "create user" button

            And the user Keeps <Blank input> input blank

            And the user clickes on "Create" button

        Then The Newuser should not be created and should present with a astrik sign where input fields are blank

        Example:
            | Blank input       |
            | First Name        |
            | Last Name         |
            | Email ID          |
            | Organization Name |
            | Designation       |
            | Phone No.         |
        

    Scenario:  Unsuccessfull attempt of UserID Creation by SuperAdmin (CheckBox not registered)

        When the SuperAdmin user clickes on "create user" button

            And the SuperAdmin user inputs the First Name of the Newuser
            
            And the SuperAdmin user inputs the Last Name of the Newuser

            And the SuperAdmin user inputs the Email ID of the Newuser

            And the SuperAdmin user inputs the Organization Name of the Newuser

            And the SuperAdmin user inputs the Designation of the Newuser
    
            And the SuperAdmin user inputs the Phone No. of the Newuser

            And the SuperAdmin user did not clickes to any of the options

        Then The Newuser should not be created and should present with a astrik sign where options are blank






    