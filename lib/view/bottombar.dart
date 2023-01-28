part of '../controller/bottombar.dart';

class BottomBarView
    extends StatelessView<BottomBarScreen, BottomBarController> {
  const BottomBarView(BottomBarController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBFBFB),
        body: IndexedStack(
          index: controller.currentIndex,
          children: [
            HomeScreen(),
            MessageScreen(),
            ProfileScreen(),
            SettingScreen(),
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
        ));
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
