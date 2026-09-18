import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/project2/navbar2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //////////////////////////////////////////////// for validation
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isValidEmail(String email) {
    final emailRegex = RegExp(
      r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Login to continue to CineVerse',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            SizedBox(height: height * 0.040),
            Image.asset('assets/project2/sofaimage.png'),

            ////////////////////////////////////////////////////////////// row 3
            SizedBox(height: height * 0.060),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  ////////////////////////////////////////////////////// email
                  TextFormField(
                    controller: emailController,
                    style: TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                      hintText: "john.doe@gmail.com",
                      hintStyle: TextStyle(color: Colors.white70),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white70,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade900,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    ////////////////////////////////////////// validation from above
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Email";
                      }
                      if (!isValidEmail(value)) {
                        return "Enter a valid Email or Password";
                      }
                      return null;
                    },
                  ),

                  //////////////////////////////////////////////////////////////// password field
                  SizedBox(height: height * 0.025),
                  TextFormField(
                    controller: passwordController,
                    style: TextStyle(color: Colors.white70),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.white70),
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
                      suffixIcon: Icon(
                        CupertinoIcons.eye_slash_fill,
                        color: Colors.white70,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade900,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),

                    //////////////////////////////////////////// validation password
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter Password";
                      }
                      if (value.length < 6) {
                        return "Enter a valid Password or Email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //////////////////////////////////////////// login red 5row
            SizedBox(height: height * 0.045),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  if (emailController.text == "abdullah@gmail.com" &&
                      passwordController.text == "123456") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Navbar2()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        //   backgroundColor: Colors.white,
                        content: Text(
                          "Incorrect Email or Password",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    );
                  }
                }
              },
              child: Container(
                height: height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: height * 0.020),
            Center(
              child: Text(
                'or continue with',
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
            ),
            SizedBox(height: height * 0.020),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.06,
                  width: width * 0.26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.7, color: Colors.grey.shade800),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/project2/google.svg',
                      height: height * 0.030,
                    ),
                  ),
                ),
                Container(
                  height: height * 0.06,
                  width: width * 0.26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.7, color: Colors.grey.shade800),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/project2/apple.svg',
                      height: height * 0.030,
                    ),
                  ),
                ),
                Container(
                  height: height * 0.06,
                  width: width * 0.26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.7, color: Colors.grey.shade800),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/project2/facebook.svg',
                      height: height * 0.035,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: height * 0.040),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 17, color: Colors.grey.shade400),
                ),
                Text(
                  ' Sign up',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
