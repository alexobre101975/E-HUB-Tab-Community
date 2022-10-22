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

# NGG-TC-31
Available seats - Activities

# Select an activity of the list and enter to the details
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/btnSeeAllDates
    Press Keycode           19
    Press Keycode           19
    Press Keycode           23

# See the number of seats available for this activity
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/ivBackgroundImage
    Press Keycode       20
    Press Keycode       20

# The number of available seats
    Press Keycode       23

# Press the "Register" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvSeats
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
    Press Keycode       23

# Press the "UnRegister" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvSeats
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnUnregister
    Press Keycode       21
    Press Keycode       23
# Back
    Press Keycode      4
# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvBackToToday
    Press Keycode       4
# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvBackToToday
    Press Keycode       4







# NGG-TC-30
Banner Notification - Activities
# Enter to Activities tile
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode       23

# Press the "Register" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
    Press Keycode       23


## Back

    Press Keycode      4

# Back
    Press Keycode       4
# Back

    Press Keycode      4
# Back

    Press Keycode      4

