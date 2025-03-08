import 'package:flutter/material.dart';
import 'package:my_second/messaging_app/activate_chats.dart';
import 'package:my_second/messaging_app/home_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF5F5F3),
          foregroundColor: Color(0xFF113953),
        ),
      ),
      routes: {
        // "/": (context) => HomePageScreen(),
        "chatPage": (context) => const ActivateChats(),
      },
      home:const HomePageScreen()
      // FutureBuilder(
      //   future: checkRemember(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return snapshot.data!;
      //     } else if (snapshot.hasError) {
      //       return Text(snapshot.error.toString());
      //     } else {
      //       return Center(child: CircularProgressIndicator());
      //     }
      //   },
      // ),
    );
  }

  // Future<Widget> checkRemember() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   bool check = await pref.getBool("isRememberMe") ?? false;
  //   if (check) {
  //     return UserDetail();
  //   } else {
  //     return LoginPage();
  //   }
  // }
}