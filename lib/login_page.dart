import 'package:flutter/material.dart';
import 'package:my_second/database/user_detail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Khushi",
              ),
            ),
            Checkbox(
              value: isRememberMe,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
            ElevatedButton(
              onPressed: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();
                await pref.setBool("isRememberMe", isRememberMe);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return UserDetail();
                  },
                ));
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}