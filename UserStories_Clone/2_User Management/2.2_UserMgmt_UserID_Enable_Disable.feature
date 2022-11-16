Feature: UserID Enable/Disable for the Security client portal website

        We will going to Enable/Disable the perticular user from the given user lists.

    Background:

        Given the user is part of client or the custodian of the operations
        Given the user is in the settings page of the Security client portal website
        Given the SuperAdmin user can Enable/Disable SuperAdmin, ClientAdmin & Security Engineer
        Given the SuperAdmin will have the User list visibility to all users
        Given the ClientAdmin user can only Enable/Disable Security Engineer
        Given the ClientAdmin will have the User list visibility only of users who is created by ClientAdmin (Security Engineer) 
        Given the Security Engineer will not have access to Enable/Disable users, nor the visibility to the user list
        Given the UserID is Enabled by default once it is created
        Given the UserID only be in disabled state if it is manually disabled or after 3 login failure it will disabled.


    Scenario: Disabling UserID (Successful)

        When the UserID is not Disabled

        Then the <User> can click to the Disable button corresponds to the Desired UserID

            And it should present with a "UserID has been disabled!!" Message 

        Example:
            | SuperAdmin  |
            | ClientAdmin |

    
    Scenario: Disabling UserID (Unsuccessful)

        When the UserID is Disabled

        Then the <User> should not get the disable button corresponds to the Desired UserID

        Example:
            | SuperAdmin  |
            | ClientAdmin |


    Scenario: Enabling UserID (Successful)

        When the UserID is Disabled

        Then the <User> can click to the Enable button corresponds to the Desired UserID

            And it should present with a "UserID has been Enabled!!" Message 

        Example:
            | SuperAdmin  |
            | ClientAdmin |

    
    Scenario: Enabling UserID (Unsuccessful)

        When the UserID is Not Disabled

        Then the <User> should not get the Enable button corresponds to the Desired UserID

        Example:
            | SuperAdmin  |
            | ClientAdmin |
