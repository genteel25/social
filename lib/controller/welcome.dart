import 'package:social/architecture/architecture.dart';
import 'package:social/util/package_export.dart';

part '../view/welcome.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => WelcomeController();
}

class WelcomeController extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WelcomeView(this);
  }
}
