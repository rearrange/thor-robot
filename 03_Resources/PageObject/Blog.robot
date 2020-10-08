*** Settings ***

*** Keywords ***
Open iPrice Blog of ${DOMAIN}
    Run Keyword If    '${DOMAIN}'=='MY'    Open Browser    ${IPRICE_MY_PROD}/trends/    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='SG'    Open Browser    ${IPRICE_SG_PROD}/trends/    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='HK'    Open Browser    ${IPRICE_HK_PROD}/trends/   ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='PH'    Open Browser    ${IPRICE_PH_PROD}/trends/    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='ID'    Open Browser    ${IPRICE_ID_PROD}/trend/    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='TH'    Open Browser    ${IPRICE_TH_PROD}/%E0%B9%80%E0%B8%97%E0%B8%A3%E0%B8%99%E0%B8%94/    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='VN'    Open Browser    ${IPRICE_VN_PROD}/xu-huong/    ${BROWSER}
