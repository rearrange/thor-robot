*** Settings ***
Resource          ../03_Resources/main_resources.robot

*** Keywords ***
users go to iPrice Home page
    Open iPrice Homepage of MY
    Maximize Browser Window

users go to iPrice Trends page
    Open iPrice Blog of MY
    Maximize Browser Window

users go to iPrice Coupons page
    Open iPrice Coupon of MY
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
