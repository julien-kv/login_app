import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Colors.teal,
          middle: Text(
            "Login App",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 25, top: 100, left: 25, right: 25),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.person_alt_circle,
                  size: 100,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                const Text(
                  "Sign In to continue",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CupertinoTextFormFieldRow(
                    placeholder: "EMAIL",
                    style: const TextStyle(color: Colors.grey),
                    cursorColor: Colors.grey,
                    controller: emailController,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(9)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CupertinoTextFormFieldRow(
                    controller: passwordController,
                    obscureText: true,
                    placeholder: "PASSWORD",
                    style: const TextStyle(color: Colors.grey),
                    cursorColor: Colors.grey,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(9)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text("Forgot Password?",
                            style: TextStyle(color: Colors.teal)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 40, right: 20, bottom: 25),
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.teal),
                      ),
                      onPressed: () {
                        if (emailController.text != "") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (ctx) {
                              return HomeScreen(email: emailController.text);
                            }),
                          ).then((value) {
                            emailController.clear();
                            passwordController.clear();
                          });
                        }
                        return;
                      },
                      child: const Text("LOGIN"),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have  account? ",
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Create a new account",
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
