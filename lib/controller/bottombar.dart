import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:social/controller/home.dart';
import 'package:social/controller/message.dart';
import 'package:social/controller/profile.dart';
import 'package:social/controller/setting.dart';
import 'package:social/util/util.dart';

part '../view/bottombar.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => BottomBarController();
}

class BottomBarController extends State<BottomBarScreen> {
  final ZoomDrawerController zoomDrawerController = ZoomDrawerController();
  int currentIndex = 0;

  showtoast() async {
    ElegantNotification.info(description: Text("Logged in successful"));
  }

  setHomePage() {
    setState(() {
      currentIndex = 0;
    });
  }

  setMessagePage() {
    setState(() {
      currentIndex = 1;
    });
  }

  setProfilePage() {
    setState(() {
      currentIndex = 2;
    });
  }

  setSettingsPage() {
    setState(() {
      currentIndex = 3;
    });
  }

  @override
  void initState() {
    setHomePage();
    showtoast();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomBarView(this);
  }
}
