import 'package:hru_chat/screens/chat_screen.dart';
import 'package:hru_chat/screens/login_screen.dart';
import 'package:hru_chat/screens/registration_screen.dart';
import 'package:hru_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(hru_chat());

class hru_chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
