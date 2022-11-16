Feature: User interations with Request subpage  |  Created By Me

    We will going to take walkthrough of Settings tab Notifications subpage objects and how they interact with the user interation.

    Background:

        Given feature file will apply for all the users
        Given the user is part of client or the custodian of the operations
        Given the user is in the Settings main page of the CLIP webpage


    Scenario: Interacting the Created By Me subpage of the Support Request tab

        When the user clicks to Created By Me subpage row

        Then the right side part of the Support Request page will display the the past requests created by that user

        And the user will able to see all the Requests in a tabular format

    
    Scenario: Changing the timestamp filter

        When user clickes to the timestamp filter

        Then it will provide drop down list containing (1Day, 7 Days, 1 Month, 3 Month, 6 Month, 96Hrs, custom)

            And user clicking that options

        Then the page will refresh with the Reqest filtered with the selected date and time

            And the Reqest will update with respect to the selected date and time

    
    Scenario: Changing the state filter

        When user clicks to the state filter 

        Then it will provide drop down list containing (Open, closed, Pending, In Progress,....)

            And user clicking that options 

        Then the page will refresh with Reqest filtered with the selected state

    
    Scenario: clicking the Request

        When user clicks to the Reqest
        
        Then it will open a dedicated page to that selected Request


