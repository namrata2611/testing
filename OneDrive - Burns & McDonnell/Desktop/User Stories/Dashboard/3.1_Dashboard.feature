Feature: User will be going to interact with the Dashboard page of Security client portal website

    We will going to see how user will be going to interact with the Dashboard page of Security client portal website


    Background:

        Given the user is part of client or the custodian of the operations
        Given the user is in the Dashboard page of the Security client portal website
        Given the SuperAdmin has the Read/Write access for all the tabs in the Dashboard page
        Given the ClientAdmin and Security Engineer has Read only access for all the tabs in the Dashboard page

    Scenario: Interating with the tabs in Dashboard page (Hovering)

        When the User hover on to the <Widgets>

        Then it will display the definition of that tab

        Example:
            | Total Incidents         |
            | High Severity, Top 3    |
            | Most Recent, Top 3      |
            | Servie Requests / Cases |
            | Threat Hunting          |
            | Threat Intel            |
            | Managed Devices         |
            | Device Health           |


    Scenario: Interating with the tabs in Dashboard page (Clicking)

        When the User clicks the <Widgets>

        Then it will redirect to the new webpage

        Example:
            | Total Incidents         |
            | High Severity, Top 3    |
            | Most Recent, Top 3      |
            | Servie Requests / Cases |
            | Threat Hunting          |
            | Threat Intel            |
            | Managed Devices         |
            | Device Health           |

    
    Scenario: Interating with the tabs in Dashboard page (3 Dot options)
    
        When the user clicks to the 3 dot option at the top right corner of <Widgets>

        Then it will provide resize option

            And hide option

            And filter option for certain tabs

        Example:
            | Total Incidents         |
            | High Severity, Top 3    |
            | Most Recent, Top 3      |
            | Servie Requests / Cases |
            | Threat Hunting          |
            | Threat Intel            |
            | Managed Devices         |
            | Device Health           |


    Scenario: Interaction with the Navigation tab

        When the user clicks to the <rows>

        Then it will redirect to the new webpage

        Example:
            | Incidents         |
            | Client Data       |
            | Device Management |
            | Threat Hunting    |
            | Threat Intel      |
            | SLA               |
            | Call Tree         |
            | Support Requests  |
            | Settings          |


    Scenario: Interacting with the user Profile Button

        When the user clicks to the user Profile Button

        Then it will provide the Drop Down List consisting of user info, settings, and Logout
        
                  

    
            