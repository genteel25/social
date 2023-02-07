import 'package:social/util/package_export.dart';
import 'package:social/util/util.dart';
import 'package:social/widget/textfield.dart';

class Search extends StatefulWidget {
  final String hintText;
  VoidCallback? onPressed;
  VoidCallback? onTap;
  Search({super.key, required this.hintText, this.onPressed, this.onTap});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 266.w,
          child: InputField(
            hintText: widget.hintText,
            onPressed: widget.onPressed,
          ),
        ),
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
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
          ),
        )
      ],
    );
  }
}
