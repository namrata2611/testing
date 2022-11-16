Feature: User interations with Settings main page
    We will going to take walkthrough of Seetings tab objects and how they interact with the user interation.

    Background:

        Given the SuperAdmin user is part of client or the custodian of the operations
        Given the SuperAdmin user is in the Settings main page of the CLIP webpage
        Given the default subpage right side part of the settings page is profile subpage

    
    Scenario: Interacting with the sub Navigation part of the settings page 

        When the SuperAdmin user clicks to <settings Navigation> rows

        Then the right side part of the settings page will display the <settings Navigation> tab

        
        Example: 
            | Settings Navigation |
            | Profile             |
            | Change Password     |
            | Create User         |
            | Notifications       |
            | Organization        |

    Scenario: Interacting the profile card subpage of the settings tab

        When SuperAdmin user clicks to the profile tab

        Then it will display the profile card containing (name, Email and Telephone field)

        And SuperAdmin user can edit the profile card fields

        And SuperAdmin user clicks to the update Profile to save the changes

    
    Scenario: Interacting the profile card subpage of the settings tab (Kept field empty)

        When SuperAdmin user clicks to the profile tab

        Then it will display the profile card containing (Name, Email and Telephone field)

        And SuperAdmin user can edit the profile card fields

        And SuperAdmin user kept <profile card filed> empty 

        Then it will provide a red asterik sign aside the empty field

        And it will not proceed to save the changes


        Example:
            |   Profile card field  |
            |   Name                |
            |   Email               |
            |   Telephone           |


    Scenario: Interacting the profile card subpage of the settings tab (Notification checkBox)

        When SuperAdmin user clicks to the profile tab

        Then it will provide the checkBox for the "Notification shared with you"

        And the options for the checkbox are (Email and Text SMS)

    




