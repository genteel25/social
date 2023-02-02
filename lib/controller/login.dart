import 'package:flutter/gestures.dart';
import 'package:social/architecture/architecture.dart';
import 'package:social/util/package_export.dart';
import 'package:social/util/util.dart';
import 'package:social/widget/textfield.dart';

part '../view/login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginController();
}

class LoginController extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showPassword = false;

  changePasswordIcon() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoginView(this);
  }
}
