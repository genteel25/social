import 'package:social/util/package_export.dart';
import 'package:social/util/util.dart';

enum InputType { normal, password }

class InputField extends StatelessWidget {
  final String hintText;
  InputType? type;
  VoidCallback? onPressed;
  bool? show;
  TextEditingController? controller;
  InputField({
    Key? key,
    required this.hintText,
    this.onPressed,
    this.show,
    this.controller,
    this.type = InputType.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // obscuringCharacter: "*",
      obscureText: type == InputType.password && show != true
          ? true
          : show == false
              ? false
              : false,
      decoration: InputDecoration(
        suffixIcon: type == InputType.password && show == true
            ? InkWell(
                onTap: onPressed,
                child: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                ),
              )
            : show == false
                ? InkWell(
                    onTap: onPressed,
                    child: const Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),
                  )
                : null,
        hintText: hintText,
      ),
      // cursorColor: AppColors.lightest,
      style: AppTextStyles.bigBold,
    );
  }
}
