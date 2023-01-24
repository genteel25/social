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
            )
          ],
        ),
      ),
    );
  }
}
