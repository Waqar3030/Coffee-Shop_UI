import '../export_all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text(
                  "It's a Great Day for Coffee",
                  style: TextStyle(
                      fontSize: 25.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 50, 54, 56),
                    borderRadius: BorderRadius.circular(10.r)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find your coffee",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.5)),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white.withOpacity(0.5),
                      )),
                ),
              ),
              TabBar(
                  tabAlignment: TabAlignment.start,
                  dividerColor: Colors.transparent,
                  controller: _tabController,
                  labelColor: AppColors.orange,
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  isScrollable: true,
                  indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(width: 2, color: AppColors.orange),
                      insets: EdgeInsets.symmetric(horizontal: 16)),
                  labelStyle:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                  labelPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  tabs: const [
                    Tab(
                      text: "Hot Coffee",
                    ),
                    Tab(
                      text: "Cold Coffee",
                    ),
                    Tab(
                      text: "Cappuiccino",
                    ),
                    Tab(
                      text: "Americano",
                    ),
                  ]),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: [
                  ItemsWidgets(),
                  ItemsWidgets(),
                  ItemsWidgets(),
                  ItemsWidgets(),
                ][_tabController.index],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
