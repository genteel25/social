import 'package:social/util/package_export.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, this.onPressed})
      : super(key: key);

  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 16.sp, letterSpacing: 1.25),
      ),
    );
  }
}
