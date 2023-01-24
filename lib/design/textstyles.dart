import 'package:google_fonts/google_fonts.dart';
import 'package:social/util/util.dart';

class AppTextStyles {
  static TextStyle bigBold = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w600,
      height: 1.2,
      color: AppColors.dark,
    ),
  );

  static TextStyle light = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w400, color: AppColors.light,
      // height: 1.2,
    ),
  );
}
