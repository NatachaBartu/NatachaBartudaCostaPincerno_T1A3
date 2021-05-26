# Get track on Diet

## Links
1. You can visit the search website for more information about Diet [DiabeteStrong](https://diabetesstrong.com/how-to-find-your-daily-calorie-need/)
1. My github [repo](https://github.com/NatachaBartu/NatachaBartudaCostaPincerno_T1A3)
1. My notion workbook [notion](https://www.notion.so/Ruby-app-Get-track-on-Diet-824ce6deb460403bafb2026b6ff53199)
## Purpose

For lose weight any good fitness plan is getting your diet right, and to do that, the first thing you need to do is to determine what your daily calorie needs are.

Physical activity, such as walking, is important for weight control because it helps you burn calories, on this basis on that I got inspired to build a ruby app to show how many calories you need to reach the goal. 

There are a lot of different online calculators on the web but my app have a differential which can calculate the goal weight and result in calories need in day and also have a suggestion menu on it.

###  Describe and Functionality 

1. The app was created to show how many calories do you need to consume daily for healthy diet routine. The app calculate the weight desire to the calories need accordingly to weight input.
1. The application is easy to run, you can open the app at the terminal. 
 
1. Only one user can use at the time.
1. The program very simple to use, as you open the app at the terminal, the user going to have a question already and is simple to follow along and answer the questions and choose the desire path.
1. The code source start on 'program.rb' file. 
1. On loops was created a possibility avoid of error expliciting a message display as: "Ops! Wrong answer try again." and also display in red in colorized to get an atention from the user.
1. Together with the documentation I created a folder 'screenshot_process' and inside of this folder there is another folder 'errors_screenshots' which contains handling errors like manual or automatic.
1. Instances variable was used during the code to access the information in different part of the code.
1. Loops, conditional statement and case statement was used on the code because of the input from the user, we need to manage which path the user can choose. 

### Lose Weight path
- will print a welcome message
- ask name and gender from user and store the information
- ask user "what is your goal" and give a 2 suggestion (get fit or lose weight)
- define this information as a number so the user can choose menu ( 1. get fit or 2 . lose weight )
- if user choose Lose Weight 
- the program will print two messages: 
 "Let's create you body profile!" and "Please write your goal weight"
- the user write the goal weight desire.
- the program will print a thank you message for the info and print the result calories.
- the program will print a question if the user would like some menu suggestion.
- if yes will ask again what type would like to choose. (non-vegan or vegan) and print menu.
- quit the program with the thank you message.
### get fit path

- will print a welcome message
- ask name and gender from user and store the information
- ask user "what is your goal" and give a 2 suggestion (get fit or lose weight)
- define this information as a number so the user can choose menu ( 1. get fit or 2 . lose weight )
- if user choose Get fit program it will print a question: "Would like some tips suggestion?" and a menu selection.
- if user write yes  the program will print a  list of tips.
- quit the program with the thank you message. 

## Feature

I used many diferent features to build my app but I will list three of them:

## 1. Calories Calculator

- On this feature, I used a 'class CaloriesCalculator' to start and a initialize method 'user', to use de information later as instances variables.
- Following that the next method was used to define a logic math to calculate the calories.
- Using the if statement to compare gender to user's gender if the statement is true the program run a specific math for it.
else use the other math on the code.
- the return result I had to use a specific syntax for the round number. 
 
### Algorithmic Logic
**Step 1:** Find your body weight in kilograms.

**Step 2:** Multiply your weight in kilograms by 0.9 if you are a woman or 1.0 if you are a man.

**Step 3:** Multiply by 24

**Step 4:** Multiply by your “Lean Factor” which categorised by body fat, men and woman have diferent 'Lean Factor' (woman 1.0 and men 0.9)
### syntax: Example using my stats: 61 kg x 0.9 (female) x 24 x 0.90 (body fat) = 1252


## 2. Using txt file into code

- Using txt files it was great to not get long text direct into the code and get messy, especially because I create 3 types of txt files.  
- On the file 'menu.rb' there is a 'class Menu' that allowed to use lots of methods inside to get the code organised.  
- On the 'veganMenu', 'nonVeganMenu' and 'healthyTips' methods it was used the same structure to display and connect the menu on the code.
- Using same the syntax I could connect the file and display it on terminal. 
- The syntax used on the code was quite simple and straightforward.
- Also connect the txt on the main file as well.

### syntax: File.open(example.txt, "r") do |file|
                puts file.read()


## 3. Define a Gender Method

- I need that feature to define which user was using the application.
- On basis of that I could set the correct path for the Algorithmic Logic, this was essencial to define to my app.
- First set the method to organise and separated de feature it was used, in this case I choose 'loadUserData' (name of my method).
- Using 'puts' to display the information for user "What your gender? (Male, Female)" 
- And store the information with 'gets.chomp' could set which path the user chose. (Female or Male).
- On this feature I chose to set a loop for the possibilities that user could choose and also the errors that could appear.
- 'while and end' or loop, guide the user try again in case of spelling or unacceptable answer and also I used colorize on color red to display the information and get the attention from the user, to repete the process.
- also I need to set one specific file for that session, I used 'user.rb' file to get a bit 'DRY' on my code.
- Class was used and a method call 'setGender' was include to this file to define what 'type' was the user, also I add a value '(value)' to my class.
- if statement helped to guide the information and define which action it was going to happen to next step.

## Outline 

The application is very simple to use, as you open the app the user going to have a question already and is simple to follow along and answer the questions and choose the desire path.

## Diagram

## Ruby app diagram
![diagram](screenshot_process/notion/notion_png/diagram.png)

## Implementation plan

The app was build on the following tool bellow.
On the pictures bellow I've written classes, data structure, pseudocode and wireframe to help me to build, understand and organise myself and how every feature it will corresponde on the code.

1. trello

The trello board was essential guide through the build process of development the application.

I selected just a few screenshots from my trello board, if would like to see more from this process you can access to all the images on the deliveries folder. 

![trello](screenshot_process/Trello/18:05/ScreenShot_2021-05-18_at_9.53.10am.png)
![trello](screenshot_process/Trello/19:05/ScreenShot_2021-05-19_at_4.38.09pm.png)
![trello](screenshot_process/Trello/20:05/ScreenShot_2021-05-20_at_8.34.20am.png)
![trello](screenshot_process/Trello/21:05/ScreenShot_2021-05-21_at_3.15.54pm.png)
![trello](screenshot_process/Trello/22:05/ScreenShot_2021-05-22_at_3.21.09pm.png)

2. notion

Using the notion during the process of the development the application was quite fun! I could organise myself and follow along as I was building the process of my app. Organisation was the "key" to get my work done. 

I selected just a few screenshots from my notion workbook , if would like to see more from this process you can access to all the pdf on the links. 

On the images above you can have an examples of my working from notion.
## Classes
![classes](screenshot_process/notion/notion_png/classes.png)
## Data Structure
![data_structure](screenshot_process/notion/notion_png/data_structure.png) 
## Pseudocode 
![pseudocode](screenshot_process/notion/notion_png/pseudocode.png)

## Wireframe
![wireframe](screenshot_process/notion/notion_png/wireframe.png)

3. manual testing

The development of the app was done with both type of testing, the automatic and manual.

On the images above you can have an examples of my working from testing development.

I selected just a few screenshots from the testing, if would like to see more from this process you can access to all the images on the deliveries folder. 

On loops was created a possibility avoid of error expliciting a message display as: "Ops! Wrong answer try again." and also display in red in colorized to get an atention from the user.

![manual_testing](screenshot_process/notion/notion_png/manual_testing.png)

![automatic](screenshot_process/errors_screenshots/20:05/automatic/ScreenShot_2021-05-20_at_1.35.13pm.png)

![automatic](screenshot_process/errors_screenshots/21:05/automatic/ScreenShot_2021-05-21_at_2.27.54pm.png)

![manual](screenshot_process/errors_screenshots/21:05/manual/ScreenShot_2021-05-21_at_1.35.56pm.png)

![manual](screenshot_process/errors_screenshots/21:05/manual/ScreenShot_2021-05-21_at_12.29.57pm.png)

## Design

1. The application is easy to run, you can open the app at the terminal. 
1. Only one user can use at the time.
1. The only dependency require on the app to run the program is: 

- gem "rspec", "~> 3.10"

- gem "colorize", "~> 0.8.1"

