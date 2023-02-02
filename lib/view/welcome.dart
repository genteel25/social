part of '../controller/welcome.dart';

class WelcomeView extends StatelessView<WelcomeScreen, WelcomeController> {
  const WelcomeView(WelcomeController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            SvgPicture.asset(
              "assets/svg/logo.svg",
              fit: BoxFit.none,
            ),
            SizedBox(height: 21.h),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/svg/background.svg",
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 61.h),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 44.r),
              child: Align(
                child: TypoWidget(
                  data: "Find a Perfect Job match",
                  textStyle: AppTextStyles.bigBold,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            TypoWidget(
              data:
                  "Finding your dream job is more easire and faster with JobHub",
              textStyle: AppTextStyles.light,
            ),
            SizedBox(height: 40.h),
            Align(
              child: Button(
                onPressed: () async {
                  context.goNamed("login");
                  await SessionManager().setFirstTimeUser();
                },
                text: "text",
                type: ButtonType.icon,
                row: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TypoWidget(
                        data: "Let's Get Started",
                        textStyle:
                            AppTextStyles.light.copyWith(color: Colors.white)),
                    SizedBox(width: 10.h),
                    SvgPicture.asset("assets/svg/icon.svg"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
