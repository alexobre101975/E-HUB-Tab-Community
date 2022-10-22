*** Settings ***
Library   AppiumLibrary
Resource    resources/NGG-TC-57-58 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Activities Window
    [Tags]    Automation

    Open App
    # NGG-TC-58
    Home - Activities
    # NGG-TC-57
    Enter to days and categories - Activities