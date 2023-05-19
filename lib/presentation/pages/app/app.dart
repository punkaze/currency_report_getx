import 'package:clean_structure_project/common/style/app_themes.dart';
import 'package:clean_structure_project/presentation/pages/core/page_not_found.dart';
import 'package:clean_structure_project/presentation/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // TODO: set design size from Figma
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightAppTheme,
          unknownRoute: GetPage(
            name: '/not-found',
            page: () => const PageNotFound(),
            transition: Transition.fadeIn,
          ),
          initialRoute: AppPages.initial,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
