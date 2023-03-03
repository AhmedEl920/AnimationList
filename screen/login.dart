import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/category.dart';
import 'package:flutter_application_1/screen/register.dart';

import 'animaded_list.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final FormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // MediaQuery(data: MediaQueryData(), child: MaterialApp());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: FormKey,
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: Colors.purple,
                  height: size.height / 3,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: size.height / 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
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
                    return "please enter your email";
                  } else if (emailController.text.contains('@') == false ||
                      emailController.text.contains('.') == false) {
                    return "please enter your password";
                  }
                  return null;
                },
              ),
              MyTextField(
                obscuretext: true,
                controller: passwordController,
                keyboardtype: TextInputType.visiblePassword,
                LabelText: "Password",
                HintText: "Password",
                PrefixIcon: Icons.lock,
                SuffixIcon: Icons.remove_red_eye,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter your password";
                  } else if (value.length < 8) {
                    return "please enter your password";
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: ElevatedButton(
                  onPressed: () {
                    if (FormKey.currentState!.validate()) {
                      debugPrint(emailController.text);
                      debugPrint(passwordController.text);
                    }
                    MyNavigator(context: context, widget: AnimadedListScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width / 3,
                      vertical: size.height / 45,
                    ),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text(
                    "Login",
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
                  MyNavigator(context: context, widget: Register());
                },
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
