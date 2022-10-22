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

# NGG-TC-33
Register - Activities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/rvActivities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode           22
    Press Keycode           22
    Press Keycode           22


# enter icon Date
    Press Keycode           23


# Enter Boton Register
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
    Press Keycode           23


## NGG-TC-32
Unregister - Activities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnSeeAttendees
    Press Keycode       21
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvCategory
    Press Keycode       23
#
# Back
    Wait Until Element Is Visible      id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvCategory
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvLocation
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister

    Press Keycode       4
# Back
    Press Keycode       4
    Wait Until Element Is Visible        id=com.sentrics.engage360:id/tvDate
    Press Keycode       4


