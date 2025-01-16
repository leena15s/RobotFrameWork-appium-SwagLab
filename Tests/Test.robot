*** Settings ***
Resource    Pages/LoginPage.robot
Resource    configs/Keywords.robot
Resource    configs/Variables.robot
Resource    Pages/ProductPageToChacout.robot

Library    AppiumLibrary

*** Test Cases ***

Successful login
    Open Test Application
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}      10 seconds
    Input Text     ${USERNAME_LOCATOR}    ${LOGIN_USER}
    Wait Until Element Is Visible    ${PASSWOR_LOCATOR}      10 second
    Input Text    ${PASSWOR_LOCATOR}  ${LOGIN_PASS}
    Wait Until Element Is Visible    ${BTNLOGIN_LOCATOR}    10 seconds    locator wasnt displayed
    Click Element  ${BTNLOGIN_LOCATOR}

Unsuccessful login
    Open Test Application
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}      10 seconds
    Input Text     ${USERNAME_LOCATOR}    ${INVALID_USER}
    Wait Until Element Is Visible    ${PASSWOR_LOCATOR}      10 second
    Input Text    ${PASSWOR_LOCATOR}  ${INVALID_PASS}
    Wait Until Element Is Visible    ${BTNLOGIN_LOCATOR}    10 seconds    locator wasnt displayed
    Click Element  ${BTNLOGIN_LOCATOR}
    Wait Until Element Is Visible    ${ERROR_MSG}    10 seconds
    Close Application


Select Products
    Successful_login
    Wait Until Element Is Visible    ${ITEM1}    15 seconds
    Click Element    ${ITEM1}
    Sleep    2
    Wait Until Element Is Visible    ${ITEM2}    15 seconds
    Click Element    ${ITEM2}
    Sleep    2
    Wait Until Element Is Visible    ${CART}    15 seconds
    Click Element    ${CART}
    Sleep    2
    FOR        ${index}    IN RANGE    2
    Swipe    500    1500    500    500    1000
    END
    Wait Until Element Is Visible    ${CHECOUT}
    Click Element    ${CHECOUT}
    Wait Until Element Is Visible    ${FIRST_NAME}      10 seconds
    Input Text     ${FIRST_NAME}    ${FIRST_NAME_FORM}
    Input Text     ${LAST_NAME}    ${LAST_NAME_FORM}
    Input Text     ${CODE}    ${CODE_FORM}
    Click Element  ${CONTINUE_BTN}
    Sleep   2
    FOR        ${index}    IN RANGE    2
    Swipe    500    1500    500    500    1000
    END
    Wait Until Element Is Visible    ${FINISH_BTN}    15 seconds
    Click Element    ${FINISH_BTN}
    Sleep   2
    Wait Until Element Is Visible    ${TEXT_MSG}    10 seconds    locator wasnt displayed
    Element Text Should Be    ${TEXT_MSG}    THANK YOU FOR YOU ORDER
    Close Application
