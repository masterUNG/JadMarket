import 'package:emarket_1/feature/order_status/shipped_status_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderStatusPage extends StatefulWidget {
  OrderStatusPage(this.index, {super.key});
  int? index;
  @override
  State<OrderStatusPage> createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends State<OrderStatusPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int lenght = 6;
  List<Widget> pages = [
    Text(''),
    Text(''),
    Text(''),
    ShippedStatusPage(),
    Text(''),
    Text(''),
  ];
  @override
  void initState() {
    _tabController = TabController(
        length: lenght, vsync: this, initialIndex: widget.index ?? 0);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
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
          "การสั่งซื้อของฉัน",
          textScaleFactor: scaleSize,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
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
                    textScaleFactor: scaleSize,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  print("chat");
                },
                icon: Icon(
                  Icons.chat_outlined,
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
                    indicatorColor: primaryColor,
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
                          "ที่ต้องชำระ",
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
                          "ที่ต้องจัดส่ง",
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
                          "ที่ต้องได้รับ",
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
                          "สำเร็จ",
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
                          "ยกเลิกแล้ว",
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
                          "การคืนเงินคืนสินค้า",
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
      ),
    );
  }
}
