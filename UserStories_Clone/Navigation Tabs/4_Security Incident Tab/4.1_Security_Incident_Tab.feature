Feature: User interactions with Security Incident Tab objects

    We will going to take walkthrough of Security Incident tab objects and how they interact with the user Interaction.

    Background:

        Given the user is part of client or the custodian of the operations
        Given the user is in the Security Incident page of the Security client portal website
        Given the SuperAdmin and Client Admin can close or change the state of the Incident tickets
        Given the Security Engineer will not have the access the close or change the state of the Incident tickets
        Given the SuperAdmin, ClientAdmin & Security Engineer can add a comment in the Incident ticket section
        Given timestamp filter can filters the ticket with respect to the date and time 
        Given Severity filter can filter the Incident Severity (Critical, High, Medium, Low) 

    Scenario: Interacting with the Security incident dashboard

        When the user clickes to <Incident Widgets> 

        Then it will redirect to the new page with the <Incident Widgets> tickets

            And it will only displays the tickets which are filtered based on the date, time and priority

            And user can open the individual ticket
        
        Example:
            |  Incident Widgets        |
            |  Total Incident Count    |
            |  Open Incident Count     |
            |  Closed Incident Count   |
            |  Critical Incident Count |
            |  High Incident Count     |
            |  Medium  Incident Count  |
            |  Low Incident Count      |

    
    Scenario: Changing the timestamp filter

        When user clickes to the timestamp filter

        Then it will provide drop down list containing (1Hrs, 4Hrs, 24Hrs, 48Hrs, 72Hrs, 96Hrs, custom)

            And user clicking that options

        Then the page will refresh with the tickets filtered with the selected date and time

            And the Incident Widgets will update with respect to the selected date and time

    
    Scenario: Changing the Severity filter

        When user clicks to the Severity filter 

        Then it will provide drop down list containing (Critical, High, Medium, Low)

            And user clicking that options 

        Then the page will refresh with tickets filtered with the selected Severity

    
    Scenario: clicking the Incident tickets

        When user clicks to the Incident tickets

        Then it will open a dedicated page to that selected Incident ticket



    
        
          



    
    






