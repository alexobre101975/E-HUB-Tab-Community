*** Settings ***
Library     AppiumLibrary
Resource   Resources/NGG-TC-24-25 Keywords.robot

Suite Setup       Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Community Dining Window
    [Tags]    Automation

    Open App
    Page Home E-hub
    Home - Dining

# NGG-TC-24
    See All - Dining
## NGG-TC-25
#    Jump to today - Dining