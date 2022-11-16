Feature: User interations with Settings subpage | change password 

    We will going to take walkthrough of Settings tab change password subpage objects and how they interact with the user interation.

    Background:

        Given feature file will apply for all the users
        Given the user is part of client or the custodian of the operations
        Given the user is in the Settings main page of the CLIP webpage
        

    Scenario: Interacting with the sub Navigation part of the settings page 

        When the user clicks to Change Password row

        Then the right side part of the settings page will display the Change Password tab


    Scenario: Interacting the change password subpage of the settings tab

        When the user clicks to Change Password row

        Then the right side part of the settings page will display the Change Password tab

        And user will get two fields containing (Enter New Password, Confirm Password)

        And user can enter new password in the both fields and press submit for confirmation


    Scenario: Interacting the change password subpage of the settings tab (Kept field empty)


        When the user clicks to Change Password row

        Then the right side part of the settings page will display the Change Password tab

        And user will get two fields containing (Enter New Password, Confirm Password)

        And user can enter new password in the both fields and press submit for confirmation

        And SuperAdmin user kept <Change password filed> empty

        Then it will provide a red asterik sign aside the empty field

        And it will not proceed to confirm the new password


    



    