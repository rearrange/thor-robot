*** Settings ***
Resource          ../02_StepDefinitions/IP-11775_-_Check_footer_links_are_now_changed_to_https.robot

*** Test Cases ***
Check footer links on Home Page
    Given users go to iPrice Home page
    When users go to the footers
    Then users see all footer links are in https
    [Teardown]    Close All Browsers

Check footer links on Trends page
    Given users go to iPrice Trends page
    When users go to the footers
    Then users see all footer links are in https
    [Teardown]    Close All Browsers

Check footer links on Coupons page
    Given users go to iPrice Coupons page
    When users go to the footers
    Then users see all footer links are in https
    [Teardown]    Close All Browsers
