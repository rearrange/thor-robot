*** Settings ***
Resource          ../02_Resources/main_resources.robot

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

*** Keywords ***
users go to iPrice Home page
    Open Browser    https://web-cms-iprice-my.iprice.mx
    Maximize Browser Window

users go to iPrice Trends page
    Open Browser    https://web-cms-iprice-my.iprice.mx/trends/
    Maximize Browser Window

users go to iPrice Coupons page
    Open Browser    https://web-cms-iprice-my.iprice.mx/coupons/
    Maximize Browser Window

users go to the footers
    Wait Until Page Contains Element    id:ipricegroup    timeout=30s
    Set Focus to Element    id:ipricegroup

users see all footer links are in https
    # Check About Us link
    Click Link    About Us
    Switch Window    new
    Wait Until Location is not    about:blank
    Location should contain    https://ipricegroup.com
    # Check Contact Us link
    Switch Window    main
    Click Link    Contact Us
    Switch Window    new
    Wait Until Location is not    about:blank
    Location should contain    https://ipricegroup.com/contact.html
    # Check Career Link
    Switch Window    main
    Click Link    Careers
    Switch Window    new
    Wait Until Location is not    about:blank
    Location should contain    https://ipricegroup.com/career.html
    # Check Partners Link
    Switch Window    main
    Click Link    Partners
    Switch Window    new
    Wait Until Location is not    about:blank
    Location should contain    https://ipricegroup.com/partner.html
