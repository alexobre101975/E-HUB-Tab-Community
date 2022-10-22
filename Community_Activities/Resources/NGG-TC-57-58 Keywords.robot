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


# NGG-TC-58
Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23

# NGG-TC-57
Enter to days and categories - Activities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/rvActivities
# Date
# Day 1
    Press Keycode           19
    Press Keycode           23
# Date
# day 2
    Press Keycode       22
    Press Keycode       23
# day 3
    Press Keycode       22
    Press Keycode       23
# day 4
    Press Keycode       22
    Press Keycode       23
# day 5
    Press Keycode       22
    Press Keycode       23
# day 6
    Press Keycode       22
    Press Keycode       23

# Categories
# See All
    Press Keycode       22
    Press Keycode       23
# Art Event
    Press Keycode       22
    Press Keycode       23
# Health & Fitness
    Press Keycode       22
    Press Keycode       23
# Special Event
    Press Keycode       22
    Press Keycode       23
# Spirituality
    Press Keycode       22
    Press Keycode       23
# Uncategorized
    Press Keycode       22
    Press Keycode       23
# Back
    Press Keycode       4

    Press Keycode       4
