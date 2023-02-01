part of '../controller/bottombar.dart';

class BottomBarView
    extends StatelessView<BottomBarScreen, BottomBarController> {
  const BottomBarView(BottomBarController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ZoomDrawer(
        disableDragGesture: true,
        mainScreenScale: 0.2,
        mainScreenAbsorbPointer: false,
        angle: 0,
        slideWidth: 291.w,
        showShadow: true,
        boxShadow: [
          BoxShadow(
            color: AppColors.light.withOpacity(0.15),
            offset: const Offset(-10, 0),
            blurRadius: 35,
            spreadRadius: 10,
          )
        ],
        controller: controller.zoomDrawerController,
        menuScreen: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: REdgeInsets.only(
              left: 30.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100.h),
                Image.asset(
                  "assets/svg/pes.png",
                  width: 80.w,
                  height: 80.h,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 20.h),
                TypoWidget(
                  data: "Oyedele Yusuf",
                  textAlign: TextAlign.start,
                  textStyle: AppTextStyles.semibold.copyWith(fontSize: 30.sp),
                ),
                SizedBox(height: 10.h),
                TypoWidget(
                  data: "oyedeleyusuff@gmail.com",
                  textStyle: AppTextStyles.smallLight.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.light,
                  ),
                ),
                SizedBox(height: 40.h),
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: SvgPicture.asset(
                        "assets/new/some.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    TypoWidget(
                      data: "Edit Profile",
                      textStyle: AppTextStyles.smallLight.copyWith(
                        fontSize: 16.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightOrange,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: SvgPicture.asset(
                        "assets/new/time.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    TypoWidget(
                      data: "Application",
                      textStyle: AppTextStyles.smallLight.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: AppColors.lilac,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: SvgPicture.asset(
                        "assets/new/sett.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    SizedBox(
                      width: 100.w,
                      child: TypoWidget(
                        data: "Notification Settings",
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.start,
                        textStyle: AppTextStyles.smallLight.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: AppColors.indigo,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: SvgPicture.asset(
                        "assets/new/love.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    TypoWidget(
                      data: "Share App",
                      textStyle: AppTextStyles.smallLight.copyWith(
                        fontSize: 16.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 142.h),
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: AppColors.tomato,
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                      child: SvgPicture.asset(
                        "assets/new/logout.svg",
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    TypoWidget(
                      data: "Logout",
                      textStyle: AppTextStyles.smallLight.copyWith(
                        fontSize: 16.sp,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        mainScreen: Scaffold(
            // backgroundColor: const Color(0xffFBFBFB),
            backgroundColor: Colors.white,
            body: IndexedStack(
              index: controller.currentIndex,
              children: [
                HomeScreen(drawer: controller.zoomDrawerController),
                const MessageScreen(),
                const ProfileScreen(),
                const SettingScreen(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              elevation: 0,
              color: Colors.transparent,
              //Icon(Icons.home),
              child: Container(
                width: double.infinity,
                height: 70.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.light.withOpacity(0.12),
                        offset: const Offset(0, -10),
                        blurRadius: 35,
                        spreadRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.5.r),
                      topRight: Radius.circular(30.5.r),
                    )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 39.w),
                    GestureDetector(
                      onTap: () => controller.setHomePage(),
                      child: bottomBarItem(
                          SvgPicture.asset(
                            "assets/svg/home.svg",
                            color: controller.currentIndex == 0
                                ? AppColors.primary
                                : const Color(0xffA8A8AA),
                          ),
                          controller.currentIndex == 0
                              ? SvgPicture.asset(
                                  "assets/svg/indicator.svg",
                                  fit: BoxFit.none,
                                )
                              : TypoWidget(
                                  data: "Home",
                                  textStyle: AppTextStyles.smallLight
                                      .copyWith(color: AppColors.light)),
                          controller.currentIndex == 0
                              ? const Spacer()
                              : SizedBox(
                                  height: 10.h,
                                )),
                    ),
                    SizedBox(width: 24.5.w),
                    GestureDetector(
                      onTap: () => controller.setMessagePage(),
                      child: bottomBarItem(
                          SvgPicture.asset(
                            "assets/svg/unchat.svg",
                            color: controller.currentIndex == 1
                                ? AppColors.primary
                                : null,
                          ),
                          controller.currentIndex == 1
                              ? SvgPicture.asset(
                                  "assets/svg/indicator.svg",
                                  fit: BoxFit.none,
                                )
                              : TypoWidget(
                                  data: "Message",
                                  textStyle: AppTextStyles.smallLight
                                      .copyWith(color: AppColors.light)),
                          controller.currentIndex == 1
                              ? const Spacer()
                              : SizedBox(height: 10.h)),
                    ),
                    SizedBox(width: 24.5.w),
                    GestureDetector(
                      onTap: () => controller.setProfilePage(),
                      child: bottomBarItem(
                          SvgPicture.asset(
                            "assets/svg/unprofile.svg",
                            color: controller.currentIndex == 2
                                ? AppColors.primary
                                : null,
                          ),
                          controller.currentIndex == 2
                              ? SvgPicture.asset(
                                  "assets/svg/indicator.svg",
                                  fit: BoxFit.none,
                                )
                              : TypoWidget(
                                  data: "Profile",
                                  textStyle: AppTextStyles.smallLight
                                      .copyWith(color: AppColors.light)),
                          controller.currentIndex == 2
                              ? const Spacer()
                              : SizedBox(height: 10.h)),
                    ),
                    SizedBox(width: 24.5.w),
                    GestureDetector(
                      onTap: () => controller.setSettingsPage(),
                      child: bottomBarItem(
                          SvgPicture.asset(
                            "assets/svg/unsetting.svg",
                            color: controller.currentIndex == 3
                                ? AppColors.primary
                                : null,
                          ),
                          controller.currentIndex == 3
                              ? SvgPicture.asset(
                                  "assets/svg/indicator.svg",
                                  fit: BoxFit.none,
                                )
                              : TypoWidget(
                                  data: "Settings",
                                  textStyle: AppTextStyles.smallLight
                                      .copyWith(color: AppColors.light)),
                          controller.currentIndex == 3
                              ? const Spacer()
                              : SizedBox(height: 10.h)),
                    ),
                    SizedBox(width: 39.w),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

Widget bottomBarItem(SvgPicture image, Widget sub, Widget spacer) {
  return Column(
    children: [
      SizedBox(height: 20.h),
      image,
      spacer,
      sub,
    ],
  );
}
