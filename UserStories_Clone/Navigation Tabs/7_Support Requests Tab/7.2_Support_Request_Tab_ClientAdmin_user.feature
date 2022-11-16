Feature: User interations with Support Request tab objects

    We will going to take walkthrough of Support Request tab objects and how they interact with the user interation.

    Background:

        Given the user is part of client or the custodian of the operations
        Given the user is in the Support Requests page of the CLIP webpage
        Given timestamp filter can filters the requests with respect to the date and time 
        Given Request type filter can filter requests (Service Request, Hunt Request, Change Request)
        Given priority filter can filter the Requests with respect to priorities
        Given user will not be able to interact with the "Open Requests" pie chart widget when it will perform the click function
        Given user will not be able to interact with the "Requests Status" pie chart widget when it will perform the click function   


    Scenario: Interacting with the "Open Requests" widget

        When the user hover to the "Open Request" pie chart

        Then it will display the count of that perticular area

            
    Scenario: Interacting with the "Requests Status" widget

        When the user hover to the "Requests Status" pie chart

        Then it will display the count of that perticular area


    Scenario: Interacting with the top right corner three dot button in Open Requests and Requests Status widget

        When the user clickes to the three dot button

        Then it will provide the drop down list

            And it will contain filter timing, resize and hide options


    Scenario: Interacting with the sub Navigation part of the Support Request Tab 

        When the SuperAdmin user clicks to <settings Navigation> rows

        Then the right side part of the settings page will display the <settings Navigation> tab

        
        Example: 
            | Support Request Navigation |
            | Create Request             |
            | Created By Me              |
            | All Request History        |
  
   