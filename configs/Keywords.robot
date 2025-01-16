*** Settings ***
Resource    configs/AppiumConfigurtaion.robot


*** Keywords ***

Open Test Application
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    #...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

Successful_login
    Open Test Application
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}      10 seconds
    Input Text     ${USERNAME_LOCATOR}    ${LOGIN_USER}
    Wait Until Element Is Visible    ${PASSWOR_LOCATOR}      10 second
    Input Text    ${PASSWOR_LOCATOR}  ${LOGIN_PASS}
    Wait Until Element Is Visible    ${BTNLOGIN_LOCATOR}    10 seconds    locator wasnt displayed
    Click Element  ${BTNLOGIN_LOCATOR}


