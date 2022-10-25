*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-51-53 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Dining Window
    [Tags]    Automation

    Open App
    Page Home E-hub
    # NGG-TC-53
    Home - Dining
    # NGG-TC-51
    Enter to days and categories - Dining





