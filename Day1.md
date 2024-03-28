# Day 1
![Language](https://img.shields.io/badge/Language-Dart-green?style=flat) ![Framework](https://img.shields.io/badge/Framework-Flutter-blue?style=flat)

***Date :26 March 2024***


### Create a new flutter project

- Open PowerShell(Windows)
- type `flutter create app-name`
- Now to open the app in Vs code 
     - Navigate to the created project by `cd app-name`
     - than `Code .`
 Your flutter app will be created and opened in VS Code

### Folders created in a flutter project

 - The lib folder contains the `main.dart` file and all the other .dart files we create in our project
     - We can divide our code into multiple dart files and combine them 
  - There are android, ios, linux, Windows, macos etc. folders that contains platform specific data or files (We do not need to do anything, Flutter will manage them)
  - The build folder contains temporary files
  - test folder contains .dart files that are used to test main code,we can set up automated tests(Advanced)
  
 ### Files created in a flutter project
 
 - They are configuration files
 - *.gitignore* is used to track changes in the project
 - *.metadata* is maintained by flutter itself for us and it contains data about our flutter project 
 - *analysis_options.yaml* contains data about dart and flutter that is used by IDE
 - *first_app.iml* contains more meta data about our flutter project which is used to build our app for different platforms
 - *pubspec.yaml* is a important file that can be used to
     - Add external package to our project 
     - Add images(other media) to our project



---



### Compilation of Dart and flutter code

Dart and flutter code cannot be understandable by native targeted platform such as android ,ios etc. It is read from top to bottom and converted to code understable by targeted platform 

![[Screenshot (21).png|500]]                                                                                                              



 ### How our flutter app start
 
 - The `main()` function is the entry point of our program , the main function automatically executes first whenever the app runs
- We defined main( ) function but we never called it , how will it execute ? , It is not necessary.
```dart
  void main(){
  //code
  }
  //void is the return type of main function
```

### runApp( )


- It is a function provided by flutter , it is used to run the flutter app and show some user interface on the screen
- Should be used  inside an another custom function
```dart
import 'package:flutter/material.dart'

     void main(){
       runApp();
                 }
```
- runApp( ) function defination in source code ![[Screenshot (23).png]]
- To use runApp we have to import a specific file from the flutter package `import 'package:flutter/material.dart'`
- runApp function accepts a single argument( i.e What to display ?)
- It displays a Widget or a Widget tree(that's the argument we pass in runApp) 

### Widget tree
- Flutter UI is made up of combination and nesting of widgets
- Flutter provides many built-in widgets but we can build our own Widgets
- A example of widget tree :
  ![[Screenshot (25).png|500]]
- We can find built in widgets [here]([Widget catalog | Flutter](https://docs.flutter.dev/ui/widgets))



---



 ### The running of a Flutter App(Summary till now) 

 ![[Screenshot (24).png|500]]

---
## IMPORTANT WIDGETS

### MaterialApp widget
- Provided by the `package:flutter/material.dart` import
- We pass it to runApp( )

```dart
 void main(){
 runApp(MaterialApp(home:));
 //Here MaterialApp() is a Constructor function of the class MaterialApp which is a build in class in flutter
 }
```
- MaterialApp creates a Widget
- Material app do not show anything on the screen by itself, we have to pass arguments
- MaterialApp accepts named arguments
- We  pass value to home named argument to display something on the screen

### Text widget

- Used to display text on the screen
- Acceps one positional parameter and other named parameters
- Text widget accepts a named parameter called style: using which we can change the fontsize,color and other properties of the text
```dart
Text('Text data')
//Here Text data is the positional argument passed to Text widget , we can also pass other named parameters
```

```dart

Text('Hello',style: TextStyle(
color:Colors.white,fontSize:20,fontWeight:bold
),)
//In this way we can style a text
//Here TextStyle() is a constructor function that accepts named parameters like color,fontSize etc. to change the text styling 

```

### First App using flutter(Hello World !)

```dart
 import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home:Text('Hello Flutter !')));
}

```


### const keyword

- Help us to save memory at runtime and optimize performance
- when we define and use a widget with const it gets saved in device memory so we can reuse it later 
- Avoids duplication of data in the memory


### Scaffold widget

- Helps us with setting up a Screen 
- After we set up a screen we can set its background color or add other styling to it 
- Accepts named arguments 
- We can wrap up other Widgets by using named argument *body*

```dart
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home:Scaffold(body:Text('Hello Flutter'))));
//Here the MaterialApp creates a app and than Scaffold creates a screen in that app in the home of the app, than the Text creates a text Hello Flutter in the body of that screen
}
```


***Wrapping up a widget Shortcut***
> 1. Right click on the widget
> 2. Select refactor
> 3. We will get options to Wrap our widget


### Center widget
- Centers its child within itself
- It accepts named arguments
- child : named parameter is used to center different widgets  
