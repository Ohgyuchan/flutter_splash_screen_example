import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenView(
        navigateRoute: AfterSplash(),
        duration: 5000,
        imageSize: 130,
        imageSrc: "assets/splashscreen.png",
        text: "Splash Screen",
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: 40.0,
        ),
        colors: [
          Colors.purple,
          Colors.blue,
          Colors.yellow,
          Colors.red,
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Welcome SplashScreen Example"),
          automaticallyImplyLeading: false),
      body: new Center(
        child: new Text(
          "Done!",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
