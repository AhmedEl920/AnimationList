import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String? LabelText;
  String? HintText;
  TextInputType? keyboardtype;
  EdgeInsetsGeometry? padding;
  IconData? PrefixIcon;
  IconData? SuffixIcon;
  bool obscuretext = false;
  String? Function(String?)? validator;
  TextEditingController? controller;
  MyTextField(
      {this.LabelText,
      this.HintText,
      this.padding,
      this.PrefixIcon,
      this.SuffixIcon,
      this.keyboardtype,
      this.validator,
      this.controller,
      required this.obscuretext});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: TextFormField(
        controller: controller,
        obscureText: obscuretext,
        keyboardType: keyboardtype,
        decoration: InputDecoration(
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 2,
              color: Colors.purple,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 5,
              color: Colors.purple,
            ),
          ),
          labelText: LabelText,
          hintText: HintText,
          prefixIcon: Icon(PrefixIcon),
          suffixIcon: Icon(SuffixIcon),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 1.25);
    path.cubicTo(
      size.width / 2 * .6,
      size.height * .5,
      size.width,
      size.height * 1.2,
      size.width * 1.2,
      size.height / 1.5,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

//========= widget
Future MyNavigator({
  required BuildContext context,
  required Widget widget,
}) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) {
    return widget;
  }));
}
