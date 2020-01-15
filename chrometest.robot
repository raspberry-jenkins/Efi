*** Settings ***
Library		AppiumLibrary

*** Variables ***
${SERVER}=  http://127.0.0.1:4723/wd/hub
${NAME}=  Android
${VER}=  10.0
${DEVNAME}=  18b4e8d4
${PACKAGE}=  com.android.chrome
${ACTIVITY}=  com.google.android.apps.chrome.Main

*** Test cases ***
OpenChrome
	Open Application 	${SERVER}	deviceName=${DEVNAME}	 platformName=${NAME}	platformVersion=${VER}	appPackage=${PACKAGE}	appActivity=${ACTIVITY}
	Click Element		com.android.chrome:id/terms_accept
	Click Element		com.android.chrome:id/negative_button
	Go To Url	https://www.eficode.com

OpenYoutube
	Open Application	${SERVER}	deviceName=${DEVNAME}	 platformName=${NAME}	platformVersion=${VER}	appPackage=com.google.android.youtube	appActivity=com.google.android.youtube.HomeActivity
	Click Element		//android.widget.ImageView[@content-desc="Search"]
	Input Text		com.google.android.youtube:id/search_edit_text		crab rave
	Click Text		crab rave 10 hours
	Click A Point		420  420  100
