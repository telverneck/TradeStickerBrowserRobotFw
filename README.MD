# robotProject
 
# Author: Telmo Rodrigues Correa

# This is a Trade Sticker project with Robot Framework and the Browser library
## Installation:
- Python 2.7 or above
- Requires Robot Framework 
- NodeJS, please downlaod at https://nodejs.org/download/release/v16.17.1/
- after downloading the project, please install python and NodeJS and use this pip commands: 

```shell
pip install robotframework
```

```shell
pip install --upgrade robotframework-browser
```




## Screenshots, Console log and reports:
project\Results

## Console logs:
project\Results


## Commands:
full test cycle: 
```shell
robot -d ./Results Tests
```

Smoke test: 
```shell
robot -d ./Results -i smoke Tests
```

## How to run Tests Parallelly:
Install robotframework-pabot  

```shell
pip install -U robotframework-pabot 
```

Run: 
```shell
pabot --processes 2 --outputdir Results\ tests\*.robot
```


## Integrating with Allure report
    - Install Node
    - install Java
    - After installing type the command line bellow:

```shell
npm install -g allure-commandline --save-dev
```
Run command
```shell
robot --listener allure_robotframework:Allure_Report tests
```
To Open Allure report, type the command line:
```shell
allure serve Allure_Report 
```
