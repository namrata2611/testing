Feature: UserID Deletion for the Security client portal website

    We will going to Reset the password of userID through settings page of Security client portal website

    Background:

        Given the user is part of client or the custodian of the operations
        Given the user is in the settings page of the Security client portal website
        Given the SuperAdmin user can Delete the SuperAdmin, ClientAdmin & Security Engineer UserID
        Given the SuperAdmin will have the User list visibility to all users
        Given the ClientAdmin user can only Delete Security Engineer UserID
        Given the ClientAdmin will have the User list visibility only of users who is created by ClientAdmin (Security Engineer) 
        Given the Security Engineer will not have access to Delete other users, nor the visibility to the user list
        Given the UserID can be deleted irrespective of their state (Enabled/Disabled)
    

    Scenario: Deleting UserID

        When the <User> can click to the Delete Button corresponds to the Desired UserID

        Then it should get a popup window stating "Are you sure you want to delete!!, Deletion may result Erasing all the information entitiled to that UserID and UserID itself" Message

            And click to "Ok! Delete" button

            And it should present with a "UserID has been Deleted Successfully" Message 

        Example:
            | SuperAdmin  |
            | ClientAdmin | 

    Scenario: Not Deleting the UserID during the Deletion Process

        When the <User> can click to the Delete Button corresponds to the Desired UserID

        Then it should get a popup window stating "Are you sure you want to delete!!, Deletion may result Erasing all the information entitiled to that UserID and UserID itself" Message

            And click to "Cancel" button

            And it should redirect to the settings page 

        Example:
            | SuperAdmin  |
            | ClientAdmin | 


       
