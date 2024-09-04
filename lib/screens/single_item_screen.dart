import 'package:flutter/cupertino.dart';
import '../export_all.dart';

// ignore: must_be_immutable
class SingleItemScreen extends StatefulWidget {
  String img;
  String names;
  SingleItemScreen(this.img, this.names, {super.key});

  @override
  State<SingleItemScreen> createState() => _SingleItemScreenState();
}

class _SingleItemScreenState extends State<SingleItemScreen> {
  final _addController = Get.put(AddController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white.withOpacity(.5),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Image.asset(
                  widget.img,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 40.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BEST COFFEE",
                      style: AppTextStyle.medium.copyWith(
                          fontSize: 16.sp, color: Colors.white.withOpacity(.4)),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      widget.names,
                      style: AppTextStyle.medium.copyWith(
                          fontSize: 30,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GetBuilder<AddController>(
                            init: _addController,
                            builder: (controller) {
                              return Container(
                                padding: EdgeInsets.all(15.r),
                                width: 120.w,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.2),
                                    ),
                                    borderRadius: BorderRadius.circular(20.r)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        controller.decrement();
                                      },
                                      child: const Icon(
                                        CupertinoIcons.minus,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    Text(
                                      controller.count.toString(),
                                      style: AppTextStyle.medium.copyWith(
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 15.w,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.increment();
                                      },
                                      child: const Icon(
                                        CupertinoIcons.add,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          Text(
                            "\$30.20",
                            style: AppTextStyle.medium.copyWith(
                                fontSize: 18.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Coffee is a major source of antioxidants in the diet. It has many health benfefits.",
                      style: AppTextStyle.medium.copyWith(
                          fontSize: 16.sp,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Volume:",
                          style: AppTextStyle.medium.copyWith(
                              fontSize: 17.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "60 ml",
                          style: AppTextStyle.medium.copyWith(
                              fontSize: 17.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.h, horizontal: 50.w),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 50, 54, 56),
                                borderRadius: BorderRadius.circular(18.r)),
                            child: Text(
                              "Add to Cart",
                              style: AppTextStyle.medium.copyWith(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(20.r),
                              decoration: BoxDecoration(
                                  color: AppColors.orange,
                                  borderRadius: BorderRadius.circular(18.r)),
                              child: const Icon(
                                Icons.favorite_outline_outlined,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
