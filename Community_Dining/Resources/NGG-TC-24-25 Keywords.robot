*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

Page Home E-hub
     Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvGroupName
     Element Should Be Visible       id=com.sentrics.engage360:id/tvGroupName        Entertainment

Home - Dining
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       22
    Press Keycode       23


# NGG-TC-24
See All - Dining
# See All Meals
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/tvDay
    Press Keycode       19
    Press Keycode       21
    Press Keycode       23
#
# See All days
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/tvMealTypes
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       23

# See All Categories

    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22
    Press Keycode       23

# See All Locations
    Press Keycode       22
    Press Keycode       22


# return
    Press Keycode       4
    Press Keycode       4


#NGG-TC-25
Jump to today - Dining
    Wait Until Element Is Visible   id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23

# Day 1
    Press Keycode       19
    Press Keycode       22

# Day 2
    Press Keycode       22

# Day 3
    Press Keycode       22
    Press Keycode       23

# Press the "Jump to today" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvMonthName
    Press Keycode       19
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvBackToToday
    Press Keycode       23

# Back
    Press Keycode       4
    Press Keycode       4

