import 'package:social/util/package_export.dart';

enum AssetType { image, svg }

class AssetHelper extends StatelessWidget {
  AssetType? type;
  final String path;
  BoxFit? fit;
  double? width;
  AssetHelper({
    Key? key,
    this.type = AssetType.image,
    this.fit = BoxFit.cover,
    this.width,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type == AssetType.image
        ? Image.asset(
            path,
            width: width ?? 12.w,
            fit: fit,
          )
        : SvgPicture.asset(
            path,
            width: width ?? 12.w,
            fit: fit!,
          );
  }
}
