part of '../controller/home.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 16.h,
              ),
              paddingWidget(
                  width: 20.0.r,
                  height: 0.0,
                  child: headerRow(HomeController())),
              SizedBox(height: 20.h),
              paddingWidget(width: 20.0.r, height: 0.0.r, child: searchRow()),
              SizedBox(height: 32.h),
              paddingWidget(width: 20.0.r, height: 0.0, child: headingRow()),
              // SizedBox(height: 16.h),
              const JobInfo(),
              SizedBox(height: 8.h),
              paddingWidget(
                width: 20.0.r,
                height: 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TypoWidget(
                      data: "Recent Post",
                      textStyle: AppTextStyles.heading,
                    ),
                    TypoWidget(
                      data: "Show All",
                      textStyle: AppTextStyles.thin,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              paddingWidget(
                width: 20.0.r,
                height: 0.0,
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: popularJobs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: REdgeInsets.all(15.r),
                      margin: REdgeInsets.only(bottom: 20.r),
                      width: double.infinity,
                      height: 80.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromRGBO(64, 59, 75, 0.1),
                            blurRadius: 35,
                            spreadRadius: -10,
                            offset: Offset(0, 10.h),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(popularJobs[index]['image']),
                          SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 170.w,
                                child: TypoWidget(
                                  // wrap: ,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  data: popularJobs[index]['title'],
                                  textStyle: AppTextStyles.semibold,
                                ),
                              ),
                              TypoWidget(
                                data: "Full Time",
                                textStyle: AppTextStyles.thin,
                              ),
                            ],
                          ),
                          const Spacer(),
                          TypoWidget(
                            overflow: TextOverflow.ellipsis,
                            data: "\$${popularJobs[index]['salary']}/m",
                            textStyle: AppTextStyles.thin,
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget headerRow(HomeController controller) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 44.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: GestureDetector(
          onTap: () => {},
          child: SvgPicture.asset(
            "assets/svg/menu.svg",
            fit: BoxFit.none,
          ),
        ),
      ),
      Image.asset("assets/svg/pes.png"),
    ],
  );
}

Widget searchRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 266.w,
        child: InputField(hintText: "Search here..."),
      ),
      Container(
        width: 44.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: SvgPicture.asset(
          "assets/svg/filter.svg",
          fit: BoxFit.none,
        ),
      )
    ],
  );
}

Widget headingRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TypoWidget(data: "Popular Job", textStyle: AppTextStyles.heading),
      TypoWidget(data: "Show All", textStyle: AppTextStyles.thin)
    ],
  );
}

class JobInfo extends StatelessWidget {
  const JobInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.grey,
      width: double.infinity,
      height: 212.w,
      child: ListView.builder(
        // controller: controller._scrollController,
        padding: REdgeInsets.symmetric(vertical: 18.r, horizontal: 20.r),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: jobs.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: REdgeInsets.all(15.r),
            width: 260.w,
            height: 160.h,
            margin: REdgeInsets.only(right: 20.r),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(0, 10.h),
                  blurRadius: 35,
                  spreadRadius: -10,
                ),
              ],
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          jobs[index]['image'],
                          // fit: BoxFit.none,
                        ),
                        SizedBox(height: 5.h),
                        TypoWidget(
                          data: jobs[index]['name'],
                          textStyle: AppTextStyles.thin.copyWith(
                            color: AppColors.light,
                          ),
                        )
                      ],
                    ),
                    SvgPicture.asset("assets/svg/love.svg"),
                  ],
                ),
                // SizedBox(height: 20.h),
                const Spacer(),
                TypoWidget(
                  data: jobs[index]['title'],
                  textStyle: AppTextStyles.semibold,
                ),
                SizedBox(height: 16.h),
                RichText(
                  text: TextSpan(
                    text: "\$${jobs[index]['salary']}/m  ",
                    style: AppTextStyles.thin.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: jobs[index]['location'],
                        style: AppTextStyles.thin,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
