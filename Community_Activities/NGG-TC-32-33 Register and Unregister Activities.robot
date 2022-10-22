*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-32-33 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Activities Window
    [Tags]    Automation

    Open App
    Home - Activities
    # NGG-TC-33
    Register - Activities
    # NGG-TC-32
    Unregister - Activities
