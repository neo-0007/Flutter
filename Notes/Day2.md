**Date :27 March 2024**


### Data Types in Dart
- Dart is a type safe language
- All value are of certain types
- A value can be of multiple type 
     - example : 29 is of data type int,num,Object
- Text Widget accepts only String as an positional parameter
```dart
Text('Hello'); //Valid
Text(20); //Invalid

```

- Core Data types in Dart

![Data types](Notes/Media/datatypes.png)


### Change Bacground Color

- We can change the Bacground color of the Screen created by the Scaffold widget 
- The Scaffold widget accepts an named parameter called bacgroundColor using which we can Change the bacground color of the screen

```dart
Scaffold(
backgroundColor: blue,
body: Text('Hello Flutter !');
)

```

### Adding Colors
- We can set Color of something by using the Constructor function Color( ) of the class Color to create colors
- Syntax
```dart


```

-  We can also use the Colors. word(Find out what it is ?)
```dart

backgroundColor: Colors.navyBlue
//OR
bacgroundColor: Color.fromARGB(255,5,120)
//Inside the bracket (Transperancy,Red,Blue,Green)

```



### Container Widget

- We can Wrap up other widget and add styling to them using Container
- Container Accepts multiple named arguments
- One is body: inside which we keep the other widgets
- One is decoration: using which we can decorate the widgets inside the container


[!NOTE] How to know what type of arguments a function accepts
> Press ==Ctrl+Space== (For windows)
>      That will provide us Suggestions


### How to make a Gradient background

- We can Wrap up the widgets in a Container and than add gradient
- The Container accepts named arguments such as child,decoration etc
- We can use this decoration argument to make a gradient background
- The decoration : accepts a value of type Decoration
- We can add BoxDecoration( ) constructor function
- The BoxDecoration accepts parameters such as gradient,shadow,border etc
- We can pass value to gradient:
- We can pass LinearGradient( ) constructor function to gradient to create a gradient background
- The LinearGradient accepts arguments such as colors,begin,end etc.
- We can use begin and end to set the alignment of the gradient and colors(accepts a List of color) to set the colors

```dart
Container(
decoration: BoxDecoration(
gradient:LinearGradient(
colors:[Colors.darkPurple,Colors.lightPurple],
begin:Alignment.topLeft,
end:Alignment.bottomRight,
)
)
child:Center(
child:Text('Hello');
)
)

```


### Building Custom Widgets

-  We can divide our app into multiple Custom Widgets that can be reused making it more convinient for us
- Custom Widgets are Widget trees made up of other widgets
- We can use classes to build  custom widgets

```dart

class CustomName extends StatelessWidget{
//Here we Created a custom class with name CustomName and that class inherits(extends keyord is used for inheritence) the StatelessWiget class which is a build in class in flutter that contains useful methods and other features for us to use,The StatelessWidget is a abstract class



@override
Widget build(context){
 return //Return the custom widget;
}
//The build is explained below
}

//Now we can use our custom widget buy using constructor function that will create a object of our custom class(That is our widget)

```




- The Source code of StatelessWidget class
![StatelessWidget source code](Notes/Media/statelesswidget.png)


- The build method is a abstract method of the StatelessWidget class , and the build accepts a argument of type BuildContext to track the location of a widget in the Widget tree, and the build method returns a Widget type value
- Since build is a abstract method whenever some class extends StatelessWidget class we have to first @override and than define the build function(it is must)

![Build method](Notes/Media/buildmethod.png)
