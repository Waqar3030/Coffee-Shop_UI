import '../export_all.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 80.h,
      decoration: BoxDecoration(color: AppColors.splashbackground, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1.r,
            blurRadius: 8..r),
      ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: AppColors.orange,
            size: 35,
          ),
          Icon(
            Icons.favorite_outline,
            color: AppColors.containerColor,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: AppColors.containerColor,
            size: 35,
          ),
          Icon(
            Icons.person,
            color: AppColors.containerColor,
            size: 35,
          ),
        ],
      ),
    );
  }
}
