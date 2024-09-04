import 'package:flutter/cupertino.dart';
import '../export_all.dart';

class ItemsWidgets extends StatelessWidget {
  ItemsWidgets({super.key});

  List img = [
    AppAssets.latte,
    AppAssets.expresso,
    AppAssets.blackCoffee,
    AppAssets.coldCoffee
  ];

  List<String> names = ['Latte', 'Expresso', 'Black Coffee', 'Cold Coffee'];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 212),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
            margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 13.w),
            decoration: BoxDecoration(
                color: AppColors.splashbackground,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8.r,
                  )
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => SingleItemScreen(img[i], names[i]));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10.r),
                    child: Image.asset(
                      '${img[i]}',
                      width: 120.w,
                      height: 120.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          names[i],
                          style: AppTextStyle.medium.copyWith(
                              fontSize: 18.sp, color: AppColors.white),
                        ),
                        Text(
                          "Best Coffee",
                          style: AppTextStyle.medium
                              .copyWith(fontSize: 16.sp, color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$30",
                        style: AppTextStyle.medium
                            .copyWith(fontSize: 18.sp, color: AppColors.white),
                      ),
                      Container(
                        padding: EdgeInsets.all(5.r),
                        decoration: BoxDecoration(
                            color: AppColors.orange,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: const Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: AppColors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
