*** Settings ***
Resource          ../02_StepDefinitions/gorewards_steps.robot

*** Test Cases ***
Scenario Outline: Verify GoRewards sections in Homepage
    Given user go to GoRewards
    When user inspect GoRewards homepage
    Then user sees ${sections} is visible

Scenario: Verify GoRewards sections in Homepage
    [Template]    Scenario Outline: Verify GoRewards sections in Homepage
    # Examples
    # sections
    "Categories"
    "Popular Today"
    "Featured Brands"

*** Keywords ***
