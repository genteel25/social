import 'package:social/util/util.dart';

enum InputType { normal, password }

class InputField extends StatelessWidget {
  final String hintText;
  InputType? type;
  VoidCallback? onPressed;
  bool? show;
  IconData? icon;
  TextEditingController? controller;
  InputField({
    Key? key,
    required this.hintText,
    this.onPressed,
    this.show,
    this.icon,
    this.controller,
    this.type = InputType.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      // textAlign: TextAlign.center,
      controller: controller,

      // obscuringCharacter: "*",
      obscureText: type == InputType.password && show != true
          ? true
          : show == false
              ? false
              : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: REdgeInsets.symmetric(vertical: 14.r, horizontal: 8.r),
        icon: icon != null
            ? Icon(
                icon,
                size: 19.w.h,
              )
            : null,
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
        hintStyle: AppTextStyles.light,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      // cursorColor: AppColors.lightest,
      style: AppTextStyles.light.copyWith(
        letterSpacing: 0.5,
        fontSize: 14.sp,
        color: Colors.black,
      ),
    );
  }
}
