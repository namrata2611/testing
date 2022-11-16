Feature: User interations with Threat intelligence tab objects

    We will going to take walkthrough of Threat intelligence tab objects and how they interact with the user interation.

    Background:

        Given the user is part of client or the custodian of the operations
        Given the user is in the Device Management page of the CLIP webpage
        Given timestamp filter can filters the Device count and plannes outages with respect to the date and time 
        

    Scenario: Interacting with the "Top Threat Intelligence" 

        When the user clicks to "Top Threat Intelligence" rows

        Then it will redirect to the new page which having the RSS feeds


    Scenario: Interacting with the "Threat Intelligenc based on Hunt Incidents"

        When the user clicks to "Threat Intelligenc based on Hunt Incidents"

        Then it will redirect to the new page 

            And that page will provide Possible Advisories, MITRE TTP's, Indicators Severity score, related News and feeds

            And that page will also provide the hyperlinks to get more Threat intelligence

            And user can add comments in the comments section for the Hunt 
