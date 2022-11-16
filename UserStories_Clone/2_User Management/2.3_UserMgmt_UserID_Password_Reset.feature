Feature: UserID Password Reset for the Security client portal website

    We will going to Reset the password of userID through settings page of Security client portal website

    Background:

        Given the user is part of client or the custodian of the operations
        Given the user is in the settings page of the Security client portal website
        Given the SuperAdmin user can reset the password of SuperAdmin, ClientAdmin & Security Engineer
        Given the SuperAdmin will have the User list visibility to all users
        Given the ClientAdmin user can only reset the password of Security Engineer
        Given the ClientAdmin will have the User list visibility only of users who is created by ClientAdmin (Security Engineer) 
        Given the Security Engineer will not have access to reset the password of other users, nor the visibility to the user list
        Given the Security Engineer will only reset its own password
        Given the UserID is Enabled by default once it is created
       

    Scenario: Reseting the password (Successful)

        When the UserID is not Disabled

        Then the <User> can click to the Reset Password button corresponds to the Desired UserID

            And provide the new complex password

            And again confirm the password

            And click to submit button

            And it should present with a "Password has been resetted successfully!!" Message 

        Example:
            | SuperAdmin  |
            | ClientAdmin |


    Scenario: Reseting the password (Unsuccessful)

        When the UserID is Disabled

        Then the <User> should not get the Reset Password button corresponds to the Desired UserID

        Example:
            | SuperAdmin  |
            | ClientAdmin |

        
    Scenario: Reseting the password by Security Engineer

        When Security Engineer clicks to reset Password

        Then the Security Engineer will provide the new complex password

            And again confirm the password

            And click to submit button

        Then it should present with a "Password has been resetted successfully!!" Message