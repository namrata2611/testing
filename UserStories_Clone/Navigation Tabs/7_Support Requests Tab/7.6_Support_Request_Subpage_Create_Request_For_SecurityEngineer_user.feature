Feature: User interaction with Support Request subpage  |  Create Request
    We will going to take walkthrough of Service Request tab Create Request subpage objects and how they interact with the user interation.

    Background:         
        Given the Security Engineer user is part of client or the custodian of the operations
        Given the Security Engineer user is in the Settings main page of the CLIP webpage
        Given the Security Engineer user can create Service & Hunt Requests
        Given the Security Engineer can only view, change Status, and comment on its own created Reqest


    Scenario: Interacting with Create Request subpage of the Support Request tab

        When the Security Engineer user clickes on "create Request" button

            And the Security Engineer user checks the <Request type> from options

            And the Security Engineer user inputs the Summary of the Request

            And the Security Engineer user inputs the Description of the Request

            And the Security Engineer user checks the <Severity type> from options 

            And the Security Engineer user inputs the Organization entity for the Reqest

            And the Security Engineer user clickes on "Create" button

        Then The request should be created and should present with "New "<Request>" Request Has been created!!" Message

        Example:
            |   Request type      |   Severity type  |
            | Service Request     |    Critical      |
            | Hunt Request        |    Major         |
                                  |    Minor         |  


    Scenario: Unsuccessfull attempt of Request Creation by SuperAdmin (Blank Field)

        When the ClientAdmin user clickes on "create Request" button

            And the ClientAdmin user Keeps <Blank input> input blank

            And the ClientAdmin user clickes on "Create" button

        Then The Request should not be created and should present with a astrik sign where input fields are blank

        Example:
            | Blank input          |
            | Summary              |
            | Description          |
        

    Scenario:  Unsuccessfull attempt of UserID Creation by SuperAdmin (CheckBox not registered - First Scenario)

        When the ClientAdmin user clickes on "create Request" button

            And the ClientAdmin user did not check the Reqest type option

            And the ClientAdmin user inputs the Summary of the Request

            And the ClientAdmin user inputs the Description of the Request

            And the ClientAdmin user checks the <Severity type> from options 

            And the ClientAdmin user attaches the document if required

            And the ClientAdmin user clickes on "Create" button

        Then The Request should not be created and should present with a astrik sign where input fields are not checked

        Example:
               |   Severity type  |
               |    Critical      |
               |    Major         |
               |    Minor         |  

    
    Scenario:  Unsuccessfull attempt of UserID Creation by SuperAdmin (CheckBox not registered - Second Scenario)

        When the ClientAdmin user clickes on "create Request" button

            And the ClientAdmin user checks the <Request type> from options

            And the ClientAdmin user inputs the Summary of the Request

            And the ClientAdmin user inputs the Description of the Request

            And the ClientAdmin user did not check the Severity type option

            And the ClientAdmin user attaches the document if required

            And the ClientAdmin user clickes on "Create" button

        Then The Request should not be created and should present with a astrik sign where input fields are not checked

        Example:
            |   Request type   |
            | Service Reqest   |
            | Hunt Reqest      |  

