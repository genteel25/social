import 'package:social/architecture/architecture.dart';
import 'package:social/util/package_export.dart';

part '../view/message.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => MessageController();
}

class MessageController extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return MessageView(this);
  }
}
