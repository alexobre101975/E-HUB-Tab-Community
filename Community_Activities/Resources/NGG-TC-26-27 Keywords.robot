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


Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23

# NGG-TC-27
Jump to today - Activities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/rvActivities
# Date
    Press Keycode           22

# Date
    Press Keycode       19
    Press Keycode       19

# Move the focus and select days other than the current day
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivNext
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivNext
    Press Keycode       23

# Press the "Jump to today" button
    Press Keycode       21
    Press Keycode       21
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvBackToToday
    Press Keycode       23

# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode       4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvBackToToday
    Press Keycode       4


# NGG-TC-26
See All Dates - Activities
# enter Activities Windows
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23

# Press the "See All Dates" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnSeeAllDates
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivNext
    Press Keycode       19
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDayOfTheWeekName
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivNext
    Press Keycode       19
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnSeeAllDates
    Press Keycode       22
    Press Keycode       23

# Back
    Press Keycode       4
