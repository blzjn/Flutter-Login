import 'package:flutter/material.dart';
import 'package:login_flutter/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'form_container_widget.dart';
import 'homescreen.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 45),
              FormContainerWidget(
                controller: emailController,
                hintText: "Email",
                isEmailField: true, // Set flag for email field
              ),
              SizedBox(height: 30),
              FormContainerWidget(
                controller: passwordController,
                hintText: "Password",
                isPasswordField: true,
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () async {
                  try {
                    UserCredential userCredential =
                        await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    // If authentication is successful, navigate to home screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                    // Show snackbar for successful login
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Login successful'),
                      ),
                    );
                  } catch (e) {
                    // Handle any authentication errors here
                    print("Error signing in: $e");
                    // Show snackbar for failed login
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Failed to login: $e'),
                      ),
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(190, 236, 1, 1),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Color.fromRGBO(190, 236, 1, 1)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
