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

  static TextStyle thin = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1.2,
      color: AppColors.dark,
    ),
  );

  static TextStyle bold = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: AppColors.dark,
    ),
  );

  static TextStyle heading = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      height: 1.2,
      color: AppColors.dark,
    ),
  );

  static TextStyle smallLight = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1.2,
      color: AppColors.dark,
    ),
  );

  static TextStyle semibold = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      height: 1.2,
      color: AppColors.dark,
    ),
  );
}
