*** Settings ***
Documentation  This resource is regarding the variables and
...  keywords used on google_search_tests script
Library  SeleniumLibrary

*** Variables ***
${GOOGLE_URL}  https://www.google.com
${BROWSER}  Chrome
${TITLE}  Google
${LINK_FIRST}  css = #rso > div:nth-child(1) > div > div > div > div > h3
${SEARCH_RESULTS}  id = resultStats
${INPUT_FIELD}  id = lst-ib
${BUTTON_SEARCH}  name = btnK
${BUTTON_LUCK}  name = btnI

*** Keywords ***
Launch Google webpage
    Open Browser  ${GOOGLE_URL}  ${BROWSER}
    Title should be  Google

Search for a key "${KEY}"
    Input text  ${INPUT_FIELD}  ${KEY}

Click on Search button
    Click button  ${BUTTON_SEARCH}

Click on I'm feeling luck button
    Click button  ${BUTTON_LUCK}

Click on the first searching result
   Page Should Contain Element  ${SEARCH_RESULTS}
   Click Element  ${LINK_FIRST}

Verify if the correct webpage is open
    Element text should be  css = h1  WE’RE HIRING!

Check if the webpage is Google main page
    Page Should Contain Element  ${BUTTON_SEARCH}

Check if the webpage goes to Google Doodles
    Page Should Contain Element  xpath=//a[@href="/doodles"]




