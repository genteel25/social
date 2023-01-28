import 'package:flutter_hidden_drawer/flutter_hidden_drawer.dart';
import 'package:social/util/util.dart';
import 'package:social/widget/textfield.dart';

part '../view/home.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomeView(this);
  }
}
