# thor-robot
Test Automation for Thor in RobotFramework. Created for [IP-11775](https://ipricegroup.atlassian.net/browse/IP-11775) as my first automated test case, and now updated to latest [RobotFramework](https://robotframework.org/) for automation proof of concept. 

Versioning:
----------
This repository was created under Windows 10 with Python 3.9.4 and using the following libraries (_last update: 1st June 2021_): 
- [RobotFramework](https://pypi.org/project/robotframework/) as core framework for test automation: v4.0.3
- [RobotFramework Selenium Library](https://pypi.org/project/robotframework-seleniumlibrary/) to interact with web via Selenium: v5.0.3
- [WebDriverManager](https://pypi.org/project/webdrivermanager/) for automatic web driver installation: v0.10.0
- Google Chrome with equivalent ChromeDriver: v91.0.4472.19

Installation:
----------
- Clone this repository and enter the project directory: 
```
git clone https://github.com/rearrange/thor-robot.git
cd thor-robot
```

- Create [virtual environment](https://docs.python.org/3/library/venv.html) in the project directory:
```
python -m venv venv

# Activate virtual environment in Windows (_ensure you're in the project folder_):
venv\Scripts\activate.bat

# Activate virtual environment in Linux/Mac (_ensure you're in the project folder_):
source venv/bin/activate
```

- Install the required libraries (_ensure that your terminal / command line has the venv activated_): 
```
pip install -r requirements.txt
```

- Install the Chrome WebDriver automatically (_the chromedriver.exe should go into venv/Scripts folder in Windows_):
```
# The version of ChromeDriver need to match with your Google Chrome version.
# Use the following command to get the latest version of ChromeDriver

webdrivermanager chrome

# OR

# Only use the following command if you do not have latest version of Chrome. 
# You will need to specify the correct version of your Chrome e.g. webdrivermanager chrome:87.0.4280.88

webdrivermanager chrome:<version>
```

- Verify that everything has been installed and work well: 
```
# Should return the following example output: _Robot Framework 4.0.3 (Python 3.9.4 on win32)_
robot --version

# Should return the following example output: _ChromeDriver 91.0.4472.19 (....)_
chromedriver --version
```


Running the test:
----------
See the full RobotFramework Documentation for all options. This [tutorial](https://dev.to/juperala/how-to-run-robot-framework-test-from-command-line-5aa) might help. Example below is for easy reference: 

- Running all tests in specific folder (_all output will be in the root project folder_)
```
cd 01_TestCases
robot . 

# Alternative Way
robot 01_TestCases\.
```

- Running all test in one specific feature file (_all output will be in the root project folder_): 
```
robot 01_TestCases\IP-11775_-_Footer_links_are_now_changed_to_HTTPS.robot 
```

- **RECOMMENDED:** Running all test in feature folder, with reporting recorded in output folder
```
# This way is recommended because "output" folder is marked in gitignore
# This will avoid it from being accidentally committed. 

robot -d output 01_TestCases\.
```

- **RECOMMENDED:** Running one specific test case in one feature file, with reporting recorded in output folder
```
# '-d output' is to specify output directory. '-t "<testcase name>"' is for specifying test case name. 
# The syntax for robot command in general: robot <parameter1 e.g. -t> <value for parameter 1> <parameter2 e.g. -d> <value> <test case file or folder> 

robot -d output -t "Check footer links on Home Page" 01_TestCases\.
```

Folder and Test Case Structure
----------
[RobotFramework supports BDD](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#behavior-driven-style) Gherkin syntax natively, and it offers freestyle folder structure, as long as the test cases have proper references to the other resources. In this repository, the folder structure is as follow: 

```bash
├── thor-robot #-- project root folder
│   ├── 01_TestCases #-- folder for all test cases in BDD
│   │   ├── IP-11775_-_Footer_links_are_now_changed_to_HTTPS.robot #-- filename can be anything, as long as it ended in .robot
│   ├── 02_StepDefinitions #-- folder to hold all step definitions
│   │   ├── IP-11775_-_Footer_links_are_now_changed_to_HTTPS.robot #-- filename can be anything, as long as it ended in .robot
│   ├── 03_Resources (folder to contain all resources -- we use PageObject inside here)
│   │   ├── PageObject
│   │       ├── #-- all files that implement PageObject
│   │       ├── Blog.robot
│   │       ├── Coupon.robot
│   │       ├── Homepage.robot
│   │   ├── main_resources.robot #-- all resources are combined into this one file
├── output #-- should not be committed, use this folder for reporting generation
├── venv #-- virtual environment folder, should not be committed.
│   ├── Scripts
│   │   ├── chromedriver.exe #-- web driver file should be created here using webdrivermanager
└── .gitignore
└── requirements.txt
└── README.md
```
