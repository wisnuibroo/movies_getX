import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_button.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bglogin.png"),
                fit: BoxFit.cover, //agar aset bg fullscreen
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Image.asset(
              "assets/wplaylogo.png",
              width: 150,
              height: 150,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 110),
                  Text(
                    "Hello, Welcome!",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  MyTextField(
                    controller: usernameController,
                    hintText: "Masukkan username",
                  ),
                  MyTextField(
                    controller: passwordController,
                    hintText: "Masukkan password",
                    isObscure: true,
                  ),
                  const SizedBox(height: 20),
                  MyButton(
                    textButton: "Login",
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    radius: 0,
                    onPressed: () {
                      Get.toNamed('/dashboard');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
