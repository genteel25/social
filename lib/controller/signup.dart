import 'package:social/architecture/architecture.dart';
import 'package:social/util/package_export.dart';
import 'package:social/util/util.dart';
import 'package:social/widget/textfield.dart';

part '../view/signup.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => SignupController();
}

class SignupController extends State<SignupScreen> {
  bool showPassword = false;

  changePasswordIcon() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SignupView(this);
  }
}
