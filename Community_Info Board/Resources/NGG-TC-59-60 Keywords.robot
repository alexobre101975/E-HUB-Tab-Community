
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
# Entrar a la Aplicacion
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

Open Home Page
        Wait Until Element Is Visible    id=com.sentrics.engage360:id/tvGroupName
        Element Text Should Be           id=com.sentrics.engage360:id/tvGroupName          Entertainment
        Press Keycode           20
        Press Keycode           20


# NGG-TC-60
Home - Info Board
        Press Keycode           22
        Press Keycode           22
        Press Keycode           22
        Press Keycode           20
        Press Keycode           23
        Wait Until Element Is Visible        id=com.sentrics.engage360:id/tvSeeAll
        Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvInfoBoardPin

        Press Keycode           19

# NGG-TC-59
Categories Validation - Info Board
# See All

         Press Keycode       23

# Art Event
        Press Keycode       22
        Press Keycode       23

# Games
        Press Keycode       22
        Press Keycode       23

# Health & Fitness
        Press Keycode       22
        Press Keycode       23

# Special Event
        Press Keycode       22
        Press Keycode       23

# Special Events
        Press Keycode       22
        Press Keycode       23

# Spirituality
        Press Keycode       22
        Press Keycode       23

# Uncategorized
        Press Keycode       22
        Press Keycode       23
# Back
        Press Keycode        4