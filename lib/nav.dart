import 'package:emarket_1/feature/cart_page.dart';
import 'package:emarket_1/feature/home_page.dart';
import 'package:emarket_1/feature/mall_page.dart';
import 'package:emarket_1/feature/notification_page.dart';
import 'package:emarket_1/feature/profile_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> with TickerProviderStateMixin {
  TabController? tabController;

  int currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    MallPage(),
    NotificationPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: pages.length, vsync: this); // initialise it here
    tabController!.animateTo(currentIndex);
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: pages.map<Widget>((e) => e).toList(),
      ),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.grey.shade50,
        // notchMargin: 8,
        // clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          elevation: 4,
          backgroundColor: Colors.white,
          onTap: (value) {
            setState(() {
              currentIndex = value;
              tabController!.animateTo(value);
            });
          },
          selectedLabelStyle: GoogleFonts.kanit(),
          unselectedLabelStyle: GoogleFonts.kanit(),
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: "หน้าหลัก"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.store),
                icon: Icon(Icons.store_outlined),
                label: "Mall"),
            BottomNavigationBarItem(
                activeIcon: Icon(CupertinoIcons.bell),
                icon: Icon(CupertinoIcons.bell_fill),
                label: "แจ้งเตือน"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.shopping_cart),
                icon: Icon(Icons.shopping_cart_outlined),
                label: "รถเข็น"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.account_circle),
                icon: Icon(Icons.account_circle_outlined),
                label: "โปรไฟล์"),
          ],
        ),
      ),
    );
  }
}
