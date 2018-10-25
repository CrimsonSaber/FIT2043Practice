# FIT2043Practice

# Project Title
iOS Cost Estimator App

## ABOUT THE PROJECT
The purpose of this project was to develop an iOS application that replicated the functionalities of the Cost Estimators from their web counterparts located on  http://apps.ibuild.com.au/kithomes/search and http://apps.i-build.com.au/pages/distance. The iOS application integrates the iBuild Kit Home Cost Estimator and Delivery Cost Estimator features into a single application. Refer to the iOS User Guide for understanding the user interface.

## Getting Started

Before we dive in, verify that the Google account(s) that you are using has billing enabled for usage of Maps, Routes and Places APIs, and has its associated API key.
Also ensure that you have the iOS project with you.


### Setup

First off, install Xcode on your local computer. Ensure that it is the latest version. The iOS app was developed on XCode Version 10.0 (10A255).

After you have installed Xcode, open the project by navigating inside the project folder and opening ```hd-team-ibuild-ios.xcworkspace```.
### Please note that ```hd-team-ibuild-ios.xcworkspace``` is the file you MUST use when opening, editing or running the application.

![picture alt](https://i.imgur.com/0AcvVpZ.png)


Now, whilst Xcode is open, click on the folder icon on the top-left corner and click ```hd-team-build-ios```. In the ```General``` tab ensure that Deployment Target is set to 11.2.
Now click on ```Podfile``` and ENSURE your Podfile looks like this:  
```
source 'https://github.com/CocoaPods/Specs.git'
target 'hd-team-ibuild-ios' do
pod 'GoogleMaps'
pod 'GooglePlaces'
end
```

If it looks like this, it means you are good to go and GoogleMaps and GooglePlaces SDK's are installed in the project.

If you do not see this, the SDK's have not been installed and the app won't function. 
To fix this you need to install the SDK's by following these steps:  
* [Install GoogleMaps SDK](https://developers.google.com/maps/documentation/ios-sdk/start)  
* [Install GooglePlaces SDK](https://developers.google.com/places/ios-sdk/start)


### Build the project
To build the project, click ```Product > Build``` or <kbd>⌘B</kbd>. When it has finished building you will be presented with a ```Build Succeeded``` message.

## Running the applicaiton 
### Simulator
You can choose the iOS device you want to run the application on by clicking```Set Active Scheme``` button under the ```Navigate``` Button on the Toolbar. You will be shown an array of devices. Choose any device you'd like to try the app on.
To run the application on the simulator, click ```Product > Run``` or <kbd>⌘R</kbd>.

## Application Structure 

The application is structured this way:

```<UserDirectory>/hd-team-ibuild-ios```  
* The home directory of the project. Contains various subdirectories and files. ```hd-team-ibuild-ios.xcworkspace``` ### is the project file that you should be using.

```<UserDirectory>/hd-team-ibuild-ios/hd-team-ibuild-ios/ViewControllers```
* Directory contains the files of the 'View Controllers' i.e. the screens of our apps, and subdirectories that contain files to beautify the View Controllers.

```<UserDirectory>/hd-team-ibuild-ios/hd-team-ibuild-ios/iBuildPricingAPIAdapter```
* Directory contains the files to connect to the Web API that HD-Team built to retrieve JSON data which is parsed and loaded into the application.

```<UserDirectory>/hd-team-ibuild-ios/hd-team-ibuild-ios/Base.lproj```
* Contains the Launchscreen and Storyboard files. Basically allows you to design the User Interface without writing code.

```<UserDirectory>/hd-team-ibuild-ios/hd-team-ibuild-ios/Miscellaneous```
* Contains files to check for internet availability and to initialise loading indicators.

```<UserDirectory>/hd-team-ibuild-ios/hd-team-ibuild-ios/Models```
* Contains a file which depicts the structure of the JSON data to be parsed into for Kit Homes.

```<UserDirectory>/hd-team-ibuild-ios/hd-team-ibuild-iosTests```
* Contains a files covering all Unit tests written for the iOS app.

```<UserDirectory>/hd-team-ibuild-ios/hd-team-ibuild-iosUITests```
* Contains a files covering all UI tests written for the iOS app.

```<UserDirectory>/hd-team-ibuild-ios/Pods```
* Contains the Google Maps and Places SDK's that the application depends on.

The iOS application has two types of tests; User Interface (UI) testing and Unit testing, both of which were written using the XCTest Library.

* Unit Testing: 
The API adaptor is tested. Specifically, we create a test API adaptor class that mimics the API adaptor but remove the process dialog and context. The unit testing tests against this test API adaptor.

* UI Testing:
The correct loading of data, dropdowns, info-buttons, page navigation were tested through XCTAssert.

### Running the tests
Running the iOS Unit and UI tests are quite simple. 
Simply navigate to the diamond shaped icon called ```Show the Test Navigator``` and simply right-click ```hd-team-ibuild-iosTests``` or ```hd-team-ibuild-iosUITests``` and click ```Run```. 
The simulator will be opened once again and testing will begin. If all tests pass, a green checkmark will be displayed on to the screen indicating that the test passed.

## Authors

* HD-Team: Saurav Kadam

* HD-Team: James Margenberg
