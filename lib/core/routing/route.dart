import 'package:get/get.dart';
import 'package:ilm/core/routing/route_name.dart';
import 'package:ilm/feature/ramadan/screens/count_down_page.dart';



class AppRoute {

  static final pages = [

    GetPage(
      name: RouteName.ramadanHome,
      page: () => CountDownPage(),
    )

  ];

}