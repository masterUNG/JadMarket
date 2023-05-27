import 'package:emarket_1/feature/shop/hit_prod_list.dart';
import 'package:emarket_1/theme.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class PordListTab extends StatefulWidget {
  const PordListTab({super.key});

  @override
  State<PordListTab> createState() => _PordListTabState();
}

class _PordListTabState extends State<PordListTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int lenght = 4;
  List<Widget> pages = [
    HitProdList(),
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
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
                    // _tabController = TabController(
                    //     length: lenght,
                    //     vsync: this,
                    //     initialIndex: widget.index ?? value);
                  },
                  tabs: [
                    Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(width: 100),
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "ยอดนิยม",
                        textScaleFactor: scaleSize,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kanit(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(width: 100),
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "ล่าสุด",
                        textScaleFactor: scaleSize,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kanit(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(width: 100),
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "สินค้าขายดี",
                        textScaleFactor: scaleSize,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kanit(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(width: 100),
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "ราคา",
                        textScaleFactor: scaleSize,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kanit(),
                      ),
                    ),
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
    );
  }
}
