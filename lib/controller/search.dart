import 'package:social/architecture/architecture.dart';
import 'package:social/logic/job/job_bloc.dart';
import 'package:social/logic/job/job_state.dart';
import 'package:social/util/package_export.dart';
import 'package:social/util/util.dart';
import 'package:social/widget/search_filter.dart';

part '../view/search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => SearchController();
}

class SearchController extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SearchView(this);
  }
}
