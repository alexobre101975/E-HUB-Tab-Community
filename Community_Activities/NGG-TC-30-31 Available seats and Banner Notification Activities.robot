*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-30-31 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Activities Window
    [Tags]    Automation

    Open App
    Home - Activities
    # NGG-TC-31
    Available seats - Activities
    # NGG-TC-30
    Banner Notification - Activities