
## Before we start the script, we need to 3 step:
    1、install Python 2.7(robotframework support Python 3.5&3.6,but this example use python 2.7)
    2、Install Robot Framework libraries as you want.
        ->As of this stage we install only Selenium2 for Web Testing:
            --> pip install robotframework-selenium2library
    3、 Install Selenium Web Drivers for each of your browsers
        ** if you use the lasted browser, you need use the lasted driver for test
        –  Chrome driver is available here:
            https://sites.google.com/a/chromium.org/chromedriver/downloads
        –  IE driver is available here:
            http://selenium-release.storage.googleapis.com/index.html
        –  Mozilla Firefox driver:
            https://github.com/mozilla/geckodriver/releases
        -  Extract all drivers somewhere in HDD and add the location to PATH
https://github.com/robotframework/WebDemo
https://github.com/robotframework/RobotDemo