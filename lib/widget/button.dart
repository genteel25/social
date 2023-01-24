import 'package:social/util/package_export.dart';
import 'package:social/util/util.dart';

enum ButtonType { normal, icon }

class Button extends StatelessWidget {
  Button({
    Key? key,
    required this.text,
    this.onPressed,
    this.height,
    this.width,
    this.type = ButtonType.normal,
    this.row,
  }) : super(key: key);

  final Function()? onPressed;
  final String text;
  double? width;
  double? height;
  ButtonType? type;
  Row? row;

  @override
  Widget build(BuildContext context) {
    return type == ButtonType.normal
        ? ElevatedButton(
            onPressed: onPressed ?? () {},
            style: ElevatedButton.styleFrom(
                fixedSize: Size(width ??= 261.w, height ??= 54.h),
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                )),
            child: Text(
              text,
              style: TextStyle(fontSize: 16.sp, letterSpacing: 1.25),
            ),
          )
        : ElevatedButton(
            onPressed: onPressed ?? () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(width ??= 261.w, height ??= 54.h),
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: row,
          );
  }
}
