import 'package:flutter/material.dart';
import 'package:stepper_app/component/stepper_component.dart';
import 'package:stepper_app/screens/splash_screen.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
         colorScheme: ColorScheme.fromSwatch().copyWith(
           primary: Colors.red.shade400,
           secondary: Colors.red.shade400,
         ),
       ),
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => const SplashScreen(),
        '/': (context) => const StepperComponent(),
      },
    ),
  );
}

