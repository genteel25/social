import 'package:social/architecture/architecture.dart';
import 'package:social/util/package_export.dart';

part '../view/setting.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => SettingController();
}

class SettingController extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SettingView(this);
  }
}
