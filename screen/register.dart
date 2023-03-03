import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login.dart';

import '../components/category.dart';

class Register extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Stack(
                children: [
                  Container(
                    color: Colors.purple,
                    height: size.height / 3,
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: size.height / 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height / 30,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            MyTextField(
              controller: nameController,
              keyboardtype: TextInputType.emailAddress,
              LabelText: "Name",
              HintText: "Name",
              PrefixIcon: Icons.email,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              obscuretext: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter your name";
                }
                return null;
              },
            ),
            MyTextField(
              controller: emailController,
              keyboardtype: TextInputType.emailAddress,
              LabelText: "Email",
              HintText: "Email",
              PrefixIcon: Icons.email,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              obscuretext: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter your Email";
                }
                return null;
              },
            ),
            MyTextField(
              controller: phoneController,
              keyboardtype: TextInputType.emailAddress,
              LabelText: "Phone",
              HintText: "Phone",
              PrefixIcon: Icons.email,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              obscuretext: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter your Phone";
                }
                return null;
              },
            ),
            MyTextField(
              controller: passwordController,
              obscuretext: true,
              keyboardtype: TextInputType.visiblePassword,
              LabelText: "Password",
              HintText: "Password",
              PrefixIcon: Icons.lock,
              SuffixIcon: Icons.visibility,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter your Password";
                }
                return null;
              },
            ),
            MyTextField(
              controller: confirmpasswordController,
              obscuretext: true,
              keyboardtype: TextInputType.visiblePassword,
              LabelText: "Confirm Password",
              HintText: "Confirm Password",
              PrefixIcon: Icons.lock,
              SuffixIcon: Icons.visibility,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter your Confirm Password";
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width / 3.6,
                    vertical: size.height / 45,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text(
                  "Registor",
                ),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width / 3.3,
                  vertical: size.height / 45,
                ),
                side: const BorderSide(
                  color: Colors.purple,
                  width: 1,
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return LogIn();
                }), (route) => false);
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
