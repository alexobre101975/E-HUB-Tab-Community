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


##
# NGG-TC-28
Banner Notification View Details - Activities

# Enter activity details
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode       23

# Press the "Register" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
    Press Keycode       23

# Back
     Wait Until Element Is Visible     id=com.sentrics.engage360:id/tvTitle
     Wait Until Element Is Visible     id=com.sentrics.engage360:id/tvCategory
     Press Keycode      4
# Back
     Wait Until Element Is Visible      id=com.sentrics.engage360:id/ivNext
     Wait Until Element Is Visible     id=com.sentrics.engage360:id/tvDate
     Press Keycode      4

     sleep          45

# visible button de Dismiss

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnDismiss
    Press Keycode       21

# Press "View Details" button

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnCustom
    Press Keycode       23

# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvCategory
    Press Keycode       4

