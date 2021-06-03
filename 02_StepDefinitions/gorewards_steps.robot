*** Settings ***
Resource          ../03_Resources/main_resources.robot

*** Keywords ***
user go to GoRewards
    Open GoRewards Homepage

user inspect GoRewards homepage
    element should be visible    class:homepage-section__header__title__name

user sees ${sections} is visible
    Element Text Should Be    ${sections}