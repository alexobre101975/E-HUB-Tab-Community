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

#NGG-TC-53
Home - Dining
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       22
    Press Keycode       23

#NGG-TC-51
Enter to days and categories - Dining
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivBackgroundImage
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDay
# See all
    Press Keycode       19
    Press Keycode       21
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate

# Day 1
    Press Keycode       22
    Press Keycode       23
# Day 2
    Press Keycode       22
    Press Keycode       23
# Day 3
    Press Keycode       22
    Press Keycode       23
# Day 4
    Press Keycode       22
    Press Keycode       23
# Day 5
    Press Keycode       22
    Press Keycode       23
# Day 6
    Press Keycode       22
    Press Keycode       23
# Day 7
    Press Keycode       22
    Press Keycode       23

# Categories
# See All
    Press Keycode       22
    Press Keycode       23

# Breakfast
    Press Keycode       22
    Press Keycode       23
# Lunch
    Press Keycode       22
    Press Keycode       23
# Dinner
    Press Keycode       22
    Press Keycode       23

# Location
# See All
    Press Keycode       22
    Press Keycode       23
# Dining Room
    Press Keycode       22
    Press Keycode       23

# Living Room
    Press Keycode       22
    Press Keycode       23

# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvMealTypes
    Press Keycode       4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDayOfTheWeekName
    Press Keycode       4
