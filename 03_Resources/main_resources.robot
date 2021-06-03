*** Settings ***
Library           SeleniumLibrary
Library           BuiltIn
Resource          PageObject/Homepage.robot
Resource          PageObject/Coupon.robot
Resource          PageObject/Blog.robot
Resource          PageObject/GoRewards.robot

*** Variables ***
${BROWSER}        Chrome
${IPRICE_MY_PROD}    https://iprice.my/
${IPRICE_SG_PROD}    https://iprice.sg/
${IPRICE_HK_PROD}    https://iprice.hk/
${IPRICE_PH_PROD}    https://iprice.ph/
${IPRICE_ID_PROD}    https://iprice.co.id/
${IPRICE_TH_PROD}    https://ipricethailand.com/
${IPRICE_VN_PROD}    https://iprice.vn/
${GOREWARDS_PH_STAGING}     https://gorewards.iprice.ph/
