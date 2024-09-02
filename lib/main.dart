import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI Example'),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double textSize;
          double buttonPadding;
          double containerWidth;

          if (constraints.maxWidth >= 1200) {
            // Desktop settings
            textSize = 48;
            buttonPadding = 40;
            containerWidth = 600;
          } else if (constraints.maxWidth >= 800) {
            // Tablet settings
            textSize = 36;
            buttonPadding = 30;
            containerWidth = 400;
          } else {
            // Mobile settings
            textSize = 24;
            buttonPadding = 20;
            containerWidth = constraints.maxWidth * 0.8;
          }

          return Center(
            child: Container(
              width: containerWidth,
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'FLUTTER WEB.\nTHE BASICS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Let\'s take a look at how to set up a simple project \n'
                        'with Flutter for the Web. It\'s surprisingly easy \n'
                        'and powerful. Let\'s dive in!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: textSize * 0.5),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('START NOW'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: buttonPadding,
                        vertical: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
