*** Settings ***
Library   AppiumLibrary
Resource    Resources/NGG-TC-26-27 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Activities Window
    [Tags]    Automation

    Open App
    Home - Activities
    # NGG-TC-27
    Jump to today - Activities
    # NGG-TC-26
    See All Dates - Activities


