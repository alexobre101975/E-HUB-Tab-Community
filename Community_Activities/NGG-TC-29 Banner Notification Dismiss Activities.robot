*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-29 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Activities Window
    [Tags]    Automation

    Open App
    Home - Activities
    # NGG-TC-29
    Banner Notification Dismiss - Activities
