# Overview

I started working on this app in December of 2024, while working as a Firefighter/Paramedic with Madison Fire Department (the one in Idaho, not Wisconsin). The Battalion Chief of EMS had approached me, knowing I was studying Software Engineering, to see if I could construct a mobile app for the department. Once I had obtained sufficient experience and education, I began developing this app.

The purpose of this app is to make the jobs of my coworkers easier. Our EMS protocols, as well as other important Department documents are stored as PDF files in a website. It is tedious navigating to the website and to the proper links, which can be detrimental if one is trying to find information about a specific medication or procedure while in a time sensitive situation. With this app, the users can pull up any medication PDF with just two taps. There is also a Drug Calculation feature, which will output the medication amounts based on a patient's weight or age.

The app, as it is is very rudamentary. I have not put much effort into the visual aspects of the app, opting to focus on the inner workings of the app.

Below is a link to a YouTube video, where I explain the app.
[Software Demo Video](https://youtu.be/PEZkJzDAs6o)

# Development Environment

For this app, I used the Apple program Xcode. This is the standard IDE for developing applications for Apple devices.

The languages I used are SwiftUI and Swift. I decided to use Swift because I read that this language is becoming the standard for Apple application development.

# Useful Websites

Two of the websites I found very useful are called *Hacking with Swift* and *Swift.org*.
*Hacking with Swift* is a fantastic and helpful website. The writer gives both explainations of coding concepts, as well as code snippets. I frequently referenced this website while working on this project.
* [Hacking with Swift](https://www.hackingwithswift.com/)
* [Swift](http://swift.org)

# Future Work

* I will implement a CPR feature to the Drug Calculations section. This was not a priority when initially designing the app, as adult cardiac arrest dosages are easy, whereas RSI dosages are less intuitive and require more effort. The CPR feature will be used more for Pediatric and Infant patients.
* I will spend more time on the appearance of the app. First, I will change the background from sterile white to something more appealing.
* I will implement a Pump Discharge Pressure calculator, which is useful for the Fire Department Driver/Operators and Engine Bosses. This feature is very complicated, as there is a great deal of math that goes into it. Also, there are many different user inputs, including hose length and size, type of nozzel, desired GPMs, elevation gain/loss, and appliance usage.
