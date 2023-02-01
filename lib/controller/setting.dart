import 'package:social/architecture/architecture.dart';
import 'package:social/util/package_export.dart';

part '../view/setting.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => SettingController();
}

enum StatusCode {
  badRequest(400, "Bad request"),
  unauthorized(401, 'Unauthorized'),
  forbidden(403, 'Forbidden'),
  notFound(404, 'Not found'),
  unKnown(000, "Error not caught ye");

  const StatusCode(this.code, this.description);
  final int code;
  final String description;
}

class SettingController extends State<SettingScreen> {
  StatusCode checkStatus(int code) {
    switch (code) {
      case 401:
        return StatusCode.badRequest;
      case 403:
        return StatusCode.forbidden;
      case 404:
        return StatusCode.notFound;
      default:
        return StatusCode.unKnown;
    }
  }

  @override
  void initState() {
    super.initState();
    print(checkStatus(40).description);
  }

  Widget build(BuildContext context) {
    return SettingView(this);
  }
}
