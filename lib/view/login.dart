part of '../controller/login.dart';

class LoginView extends StatelessView<LoginScreen, LoginController> {
  const LoginView(LoginController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBFBFB),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100.h),
            Padding(
              padding: REdgeInsets.only(left: 10.r),
              child: TypoWidget(
                data: "Welcome Back!",
                textStyle: AppTextStyles.bold,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              padding: REdgeInsets.only(left: 10.r),
              width: 227.w,
              child: TypoWidget(
                data: "Fill your details or continue with social media",
                textStyle: AppTextStyles.light,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 30.h),
            InputField(
              controller: controller.emailController,
              hintText: "Email address",
              icon: Icons.mail_outline,
            ),
            SizedBox(height: 24.h),
            InputField(
              controller: controller.passwordController,
              hintText: "Password",
              icon: Icons.lock_outline,
              type: InputType.password,
              show: controller.showPassword,
              onPressed: (() => controller.changePasswordIcon()),
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerRight,
              child: TypoWidget(
                data: "forgot password",
                textStyle: AppTextStyles.smallLight,
              ),
            ),
            SizedBox(height: 40.h),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) async {
                if (state is AuthLoading) {
                  const CircularProgressIndicator();
                }
                if (state is AuthSuccess) {
                  context.goNamed("bottombar");
                  await SessionManager().setIsUserLoggedIn();
                  hasUpdated = false;
                }
                if (state is AuthFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        state.error.toString(),
                      ),
                    ),
                  );
                }
              },
              child: Button(
                text: "Sign in",
                width: 335.w,
                onPressed: () => context.read<AuthBloc>().add(
                      SignIn(
                        email: controller.emailController.text,
                        password: controller.passwordController.text,
                      ),
                    ),
              ),
            ),
            SizedBox(height: 40.h),
            Align(
              child: TypoWidget(
                data: "- Or continue with -",
                textStyle: AppTextStyles.light,
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/facebook.svg",
                  fit: BoxFit.contain,
                ),
                SizedBox(width: 20.w),
                SvgPicture.asset(
                  "assets/svg/google.svg",
                  fit: BoxFit.contain,
                )
              ],
            ),
            SizedBox(height: 40.h),
            Align(
              child: RichText(
                text: TextSpan(
                  text: "New User?",
                  style: AppTextStyles.light,
                  children: [
                    TextSpan(
                        text: " Create Account",
                        style: AppTextStyles.light.copyWith(
                          fontWeight: FontWeight.w900,
                          color: Color(0xff1A1D1E),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.goNamed("signup")),
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
