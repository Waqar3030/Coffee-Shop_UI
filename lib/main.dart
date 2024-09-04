import 'export_all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(430, 932),
      child: GetMaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.splashbackground),
        home: const WelcomeScreen(),
      ),
    );
  }
}
