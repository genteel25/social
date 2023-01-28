import 'package:social/architecture/architecture.dart';
import 'package:social/util/package_export.dart';

part '../view/profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => ProfileController();
}

class ProfileController extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ProfileView(this);
  }
}
