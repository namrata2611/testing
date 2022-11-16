Feature: User interations with Settings subpage | Notifications

    We will going to take walkthrough of Settings tab Notifications subpage objects and how they interact with the user interation.

    Background:

        Given feature file will apply for all the users
        Given the user is part of client or the custodian of the operations
        Given the user is in the Settings main page of the CLIP webpage


    Scenario: Interacting the Notifications subpage of the settings tab

        When the user clicks to Notifications row

        Then the right side part of the settings page will display the Notifications tab

        And the user will able to see all the notifications in a tabular format