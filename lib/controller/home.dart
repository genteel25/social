import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:social/logic/job/job_bloc.dart';
import 'package:social/logic/job/job_event.dart';
import 'package:social/logic/job/job_state.dart';
import 'package:social/util/util.dart';
import 'package:social/widget/textfield.dart';

part '../view/home.dart';

class HomeScreen extends StatefulWidget {
  final ZoomDrawerController drawer;
  const HomeScreen({Key? key, required this.drawer}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  showtoast() async {}

  @override
  void initState() {
    super.initState();
    context.read<JobBloc>().add(GetAllJobs());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ElegantNotification.info(
      description: Text("Logged in successful"),
      background: Colors.red,
    );
    return HomeView(this);
  }
}
