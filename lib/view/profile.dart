part of '../controller/profile.dart';

class ProfileView extends StatelessView<ProfileScreen, ProfileController> {
  const ProfileView(ProfileController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SvgPicture.asset(
          "assets/new/back.svg",
          fit: BoxFit.none,
        ),
        elevation: 0,
        title: TypoWidget(
          data: "Profile",
          textStyle: AppTextStyles.semibold.copyWith(
            fontSize: 20.sp,
          ),
        ),
        backgroundColor: const Color(0xffFBFBFB),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Align(
              child: Image.asset(
                "assets/svg/pes.png",
                width: 80.w,
                height: 80.h,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20.h),
            TypoWidget(
              data: "Oyedele Yusuff",
              textStyle: AppTextStyles.semibold.copyWith(
                fontSize: 30.sp,
              ),
            ),
            SizedBox(height: 10.h),
            TypoWidget(data: "Edit Profile", textStyle: AppTextStyles.light),
            SizedBox(height: 40.h),
            Align(
              alignment: Alignment.centerLeft,
              child: TypoWidget(data: "Name", textStyle: AppTextStyles.light),
            ),
            SizedBox(height: 10.h),
            InputField(hintText: "Oyedele Yusuff"),
            SizedBox(height: 30.h),
            Align(
              alignment: Alignment.centerLeft,
              child: TypoWidget(data: "Email", textStyle: AppTextStyles.light),
            ),
            SizedBox(height: 10.h),
            InputField(hintText: "oyedeleyusuff@gmail.com"),
            SizedBox(height: 30.h),
            Align(
              alignment: Alignment.centerLeft,
              child:
                  TypoWidget(data: "Password", textStyle: AppTextStyles.light),
            ),
            SizedBox(height: 10.h),
            InputField(hintText: "Password"),
            SizedBox(height: 50.h),
            SizedBox(
              width: double.infinity,
              child: Button(text: "Save"),
            ),
          ],
        ),
      ),
    );
  }
}
