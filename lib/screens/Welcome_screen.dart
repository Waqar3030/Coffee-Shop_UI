import '../export_all.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(AppAssets.bg),
                fit: BoxFit.cover,
                opacity: 0.6)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffee Shop",
              style: AppTextStyle.heading,
            ),
            Column(
              children: [
                Text(
                  "Feeling low? Take a Sip of Coffee",
                  style: AppTextStyle.small,
                ),
                const SizedBox(
                  height: 80,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => const HomeScreen());
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 60.w),
                    decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Text(
                      "Get Start",
                      style: AppTextStyle.medium
                          .copyWith(fontSize: 24.sp, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
