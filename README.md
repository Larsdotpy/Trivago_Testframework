# Trivago Test Framework
`Test framework for Trivago with tests for web & mobile.`

![Trivago_logo](https://1000logos.net/wp-content/uploads/2020/09/Trivago-logo.png)

**Languages**: Java & Gherkin

**BDD**: Cucumber

**Automators**: Selenium (***Web***), UIAutomator2Options (***Android***)

*This framework was created as a learning project and has since grown to a large project with various testcases for web and mobile. Due to complexity the standard variant for web testing is dutch only and for mobile - english. This project is the first of many, all of which will be build with the same intention in mind: self development, building experience and as a showcase project for my resume.*

*iOS testing has been excluded due to the unavailability of the trivago.ipa file. Android apk files can be commonly obtained by sources like 'apkmirror'. Unfortunately iOS does not have an equivalent and as this is a selfmade project, I did not have access to any develop/tester perks a member of the trivago development team would have, which would grant me the possibility of using their .ipa file. Therefore, iOS testing is excluded.*

*API testing has been excluded due to the protection by Trivago. All API calls result in a 403 statuscode. Meaning the request made is forbidden and unable to be included in this testing framework.*


## Project setup

### Android apk
To use the most recent Trivago apk file, go to the following link: *https://www.apkmirror.com/apk/trivago/* 

Remember to set the path correctly in the *android.local.properties* file, so the class createAndroidDriver understands which apk file to use. If this path is not included or set wrong, the tests will fail. 

### Clone this repository
```
git clone https://github.com/Larsdotpy/Trivago_Testframework.git
```
### Dependencies
Check if all the dependencies in the pom.xml file are still up-to-date. If not, some errors might occur and the framework will either fail or not be running smoothly.

## MVN test parameters
No parameters: Default value, for web this means that the default browser (CHROME) will be selected. For mobile this means that the default OS (ANDROID) will be selected. The API tests do not require a specific parameter for an agent. 

**Chrome**
```
mvn test -Dbrowser=chrome -Dtest=RunTestWeb
```
**Firefox**
```
mvn test -Dbrowser=firefox -Dtest=RunTestWeb
```
**Android**
```
mvn test -Dbrowser=android -Dtest=RunTestMobile
```

## Project breakdown

### Config

#### Constants
The Constants class contains variables that remain the same throughout the entire usage of the project. These variables are declared with the final keyword, so they are unable to be altered after creation. 

## Context

### ScenarioContext
The ScenarioContext class, as the name suggests, gives context to the scenarios from the feature files. This means that inside this class pages and attributes get defined with getters and setters. This is done via the use of Lombok. Annotating the class with '@Data'. This makes the code less verbose and more readable. All the variables are declared with 'private' so that they cannot be changed inside other classfiles of the project. This is mainly for security reasons and prevents us from making any mistakes when expending the project code.

## Driver

### DriverFactory


