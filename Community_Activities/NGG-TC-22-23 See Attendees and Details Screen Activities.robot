*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-22-23 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Activities Window
    [Tags]    Automation

    Open App
    Home - Activities
    # NGG-TC-23
    See Attendees - Activities
    # NGG-TC-22
    Activity Details Screen - Activities