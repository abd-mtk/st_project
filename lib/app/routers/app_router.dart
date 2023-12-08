import 'package:get/get.dart';

import '../../features/welcome_screen.dart';
import 'settings_routes.dart';

List<GetPage<dynamic>>? appRouter = [
  GetPage(
    name: WelcomeScreen.routeName,
    page: () => WelcomeScreen(),
  ),
  ...settings,
];
