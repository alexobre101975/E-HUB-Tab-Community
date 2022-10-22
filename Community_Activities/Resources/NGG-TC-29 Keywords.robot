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
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23

# NGG-TC-29
Banner Notification Dismiss - Activities
#Select an activity of the list and enter to the details
# Enter to Activities tile
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvDay
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvAvailableActivities
    Press Keycode       23

## Press the "Register" button
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvCategory
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/btnRegister
    Press Keycode       23

# # Press The Unregister Button
#    Wait Until Element Is Visible               id=com.sentrics.engage360:id/clInfo
#    Wait Until Element Is Visible               id=com.sentrics.engage360:id/btnSeeAttendees
#    Press Keycode       21
#    press Keycode       23

# # Back
    Wait Until Element Is Visible               id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible               id=com.sentrics.engage360:id/tvDescription
     Press Keycode      4

 # Back
     Press Keycode      4
    Wait Until Element Is Visible               id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible               id=com.sentrics.engage360:id/tvDay
# Back
     Press Keycode      4
# Press "Dismiss" button
    sleep       40
    Press Keycode       23
