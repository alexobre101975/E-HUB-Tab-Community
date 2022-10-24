*** Settings ***
Library   AppiumLibrary

Resource    Resources/NGG-TC-59-60 Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Repairs
       Open App
       Open Home Page
        # NGG-TC-60
        Home - Info Board
        # NGG-TC-59
        Categories Validation - Info Board


