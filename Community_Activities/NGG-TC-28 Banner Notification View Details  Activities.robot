*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-28 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Activities Window
    [Tags]    Automation

    Open App
    Home - Activities
    # NGG-TC-28
    Banner Notification View Details - Activities