part of '../controller/search.dart';

class SearchView extends StatelessView<SearchScreen, SearchController> {
  const SearchView(SearchController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.h,
        centerTitle: true,
        leading: SvgPicture.asset(
          "assets/new/back.svg",
          fit: BoxFit.none,
        ),
        elevation: 0,
        title: TypoWidget(
          data: "Search",
          textStyle: AppTextStyles.semibold.copyWith(
            fontSize: 20.sp,
          ),
        ),
        backgroundColor: const Color(0xffFBFBFB),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 20.r,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Search(
              hintText: "UI Design",
              onTap: () => showModalBottomSheet(
                isScrollControlled: true,
                barrierColor: const Color(0xff2B2B2B).withOpacity(0.7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                context: context,
                builder: (context) => Container(
                  height: MediaQuery.of(context).size.height / 1.15,
                  // color: Colors.amber,
                ),
              ),
            ),
            SizedBox(height: 18.h),
            TypoWidget(
                data: "35 Job Opportunities",
                textStyle: AppTextStyles.semibold
                    .copyWith(fontWeight: FontWeight.w400)),
            SizedBox(height: 14.h),
            const SearchTabs(),
          ],
        ),
      )),
    );
  }
}

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            splashBorderRadius: BorderRadius.circular(15.r),
            labelStyle: AppTextStyles.light,
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: AppColors.primary,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                height: 50.h,
                text: "Most Relevant",
              ),
              Tab(
                height: 50.h,
                text: "Most Recent",
              )
            ],
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 600.h,
            child: const TabBarView(
              children: [
                MostRelevant(),
                MostRecent(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MostRelevant extends StatelessWidget {
  const MostRelevant({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobBloc, JobState>(
      builder: (context, state) {
        if (state is JobLoading) {
          return CircularProgressIndicator(color: AppColors.primary);
        }
        if (state is JobSuccess) {
          return ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: state.response.length,
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
                    SvgPicture.network(state.response[index].companyImage!),
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
                            data: state.response[index].title!,
                            textStyle: AppTextStyles.semibold,
                          ),
                        ),
                        TypoWidget(
                          data: state.response[index].jobType!,
                          textStyle: AppTextStyles.thin,
                        ),
                      ],
                    ),
                    const Spacer(),
                    TypoWidget(
                      overflow: TextOverflow.ellipsis,
                      data: "\$${state.response[index].amount!}/m",
                      textStyle: AppTextStyles.thin,
                    )
                  ],
                ),
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}

class MostRecent extends StatelessWidget {
  const MostRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobBloc, JobState>(
      builder: (context, state) {
        if (state is JobLoading) {
          return CircularProgressIndicator(color: AppColors.primary);
        }
        if (state is JobSuccess) {
          return ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: state.response.length,
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
                    SvgPicture.network(state.response[index].companyImage!),
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
                            data: state.response[index].title!,
                            textStyle: AppTextStyles.semibold,
                          ),
                        ),
                        TypoWidget(
                          data: state.response[index].jobType!,
                          textStyle: AppTextStyles.thin,
                        ),
                      ],
                    ),
                    const Spacer(),
                    TypoWidget(
                      overflow: TextOverflow.ellipsis,
                      data: "\$${state.response[index].amount!}/m",
                      textStyle: AppTextStyles.thin,
                    )
                  ],
                ),
              );
            },
          );
        }
        return const SizedBox();
      },
    );
  }
}
