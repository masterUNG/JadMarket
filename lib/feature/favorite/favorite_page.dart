import 'package:emarket_1/feature/cart_two_page.dart';
import 'package:emarket_1/feature/chat/chat_list_page.dart';
import 'package:emarket_1/feature/favorite/fav_all_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int lenght = 4;
  List<Widget> pages = [
    FavAllPage(),
    Text(''),
    Text(''),
    Text(''),
  ];
  @override
  void initState() {
    _tabController =
        TabController(length: lenght, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        title: Text(
          "สิ่งที่ฉันถูกใจ",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              print("search");
            },
            icon: Icon(
              Icons.search,
              color: primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              var route =
                  MaterialPageRoute(builder: (context) => CartTwoPage());
              Navigator.push(context, route);
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: primaryColor,
            ),
          ),
          Stack(
            children: [
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  var route =
                      MaterialPageRoute(builder: (context) => ChatListPage());
                  Navigator.push(context, route);
                },
                icon: Icon(
                  CupertinoIcons.chat_bubble_text,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
      body: DefaultTabController(
        length: lenght,
        child: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 50),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Container(
                  color: Colors.white,
                  child: TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    labelPadding: EdgeInsets.all(4),
                    labelColor: primaryColor,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.transparent,
                    onTap: (value) {
                      setState(() {});
                      // _tabController = TabController(
                      //     length: lenght,
                      //     vsync: this,
                      //     initialIndex: widget.index ?? value);
                    },
                    tabs: [
                      _tabController!.index == 0
                          ? boxSelected("ทั้งหมด")
                          : boxUnselected("ทั้งหมด"),
                      _tabController!.index == 1
                          ? boxSelected("สถานะ")
                          : boxUnselected("สถานะ"),
                      _tabController!.index == 2
                          ? boxSelected("ส่วนลด")
                          : boxUnselected("ส่วนลด"),
                      _tabController!.index == 3
                          ? boxSelected("หมวดหมู่")
                          : boxUnselected("หมวดหมู่"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: _tabController,
                    children: pages,
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  Widget boxUnselected(String text) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints.expand(width: 100),
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade200,
      ),
      padding: EdgeInsets.all(5),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.kanit(),
      ),
    );
  }

  Widget boxSelected(String text) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(width: 100),
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: primaryColor),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(5),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.kanit(),
          ),
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5)),
            gradient: LinearGradient(
              stops: [.5, .5],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                primaryColor,
                Colors.transparent, // top Right part
              ],
            ),
          ),
        ),
        Positioned(
          top: 2,
          left: 2,
          child: Icon(
            Icons.check,
            size: 10,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
