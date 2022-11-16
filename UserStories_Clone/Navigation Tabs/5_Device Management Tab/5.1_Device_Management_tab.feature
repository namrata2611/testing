Feature: User interations with Device Management tab objects

    We will going to take walkthrough of Security Incident tab objects and how they interact with the user interation.

    Background:

        Given the user is part of client or the custodian of the operations
        Given the user is in the Device Management page of the CLIP webpage
        Given timestamp filter can filters the Events and plannes outages with respect to the date and time 
        Given Severity filter can filter the Incident Severity (Critical, High, Medium, Low) 
        Given user will not be able to interact with the "Total Device Count" widget when it will perform the click function
        Given user will not be able to interact with the "Device Count over time" widget when it will perform the click function


    Scenario: Interactinng with the sensor and client observed widgets

        When the user clickes to <asset item> rows

        Then it will redirect to the new page with the <asset item> details

            And user view the <asset item>, discovered date, class, IP, Domain name, Health status, tickets, events and outages
        
        Example: 
            | asset item      |
            | sensor          |
            | client observed |


    Scenario: Interacting with the "Total Device Count" widget

        When the user hover to the "total device count" pie chart

        Then it will display the asset count of that perticular area

            And it will also display the critical asset counts


    Scenario: Interacting with the "Device count over time" widget

        When the user hover to the "device count over time" graph

        Then it will display the asset count with respect to the cursor positioned to the co-ordinates


    Scenario: Interacting with the Events and planned outage widgets

        When the user clicks to <Info tab> rows

        Then it will redirect to the new page with the <info tag> details

            And user can add comments in the comments section

        Example: 
            | Info tab        |
            | Events          |
            | Planned outages |

    
    Scenario: Interacting with the top right corner three dot button in Events and Planned outages widget

        When the user clickes to the three dot button

        Then it will provide the drop down list

            And it will contain filter timing, resize and hide options

        



            







