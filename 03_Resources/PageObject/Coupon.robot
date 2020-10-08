*** Settings ***

*** Keywords ***
Open iPrice Coupon of ${DOMAIN}
    Run Keyword If    '${DOMAIN}'=='MY'    Open Browser    ${IPRICE_MY_PROD}/coupons    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='SG'    Open Browser    ${IPRICE_SG_PROD}/coupons    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='HK'    Open Browser    ${IPRICE_HK_PROD}/coupons    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='PH'    Open Browser    ${IPRICE_PH_PROD}/coupons    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='ID'    Open Browser    ${IPRICE_ID_PROD}/coupons    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='TH'    Open Browser    ${IPRICE_TH_PROD}/coupons    ${BROWSER}
    Run Keyword If    '${DOMAIN}'=='VN'    Open Browser    ${IPRICE_VN_PROD}/coupons    ${BROWSER}
