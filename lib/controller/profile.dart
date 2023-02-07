import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:social/util/util.dart';
import 'package:social/widget/textfield.dart';

part '../view/profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => ProfileController();
}

class ProfileController extends State<ProfileScreen> {
  final TextEditingController nameController =
      TextEditingController(text: username);
  final TextEditingController emailController =
      TextEditingController(text: email);
  final TextEditingController passwordControllr =
      TextEditingController(text: "******");

  File? file;

  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowedExtensions: ['jpg', 'png'],
    );

    if (result != null) {
      setState(() {
        file = File(result.files.single.path!);
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProfileView(this);
  }
}
