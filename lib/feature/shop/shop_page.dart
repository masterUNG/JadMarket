import 'package:emarket_1/feature/shop/pord_list_tab.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage>
    with SingleTickerProviderStateMixin {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  TabController? _tabController;
  int lenght = 4;
  List<Widget> pages = [
    Text(''),
    PordListTab(),
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
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: 160.0,
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "ค้นหาสินค้า...",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        filled: true,
                        fillColor: Colors.black.withOpacity(0.5),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white.withOpacity(0.8),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(width: 0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            width: 0,
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {},
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.list,
                    ),
                  ),
                ],
              ),
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double top = constraints.biggest.height;
                  return Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                        ),
                        child: Stack(
                          children: [
                            Image.network(
                              "https://photos.watchmedier.dk/kIhMqPE-aImpcQINvIP_8nQPIsKZvPYeXVoRanJs0JA/resize:fill:960:0:0/plain/https%3A%2F%2Fphotos.watchmedier.dk%2FImages%2Farticle13209185.ece%2FALTERNATES%2Fschema-16_9%2F21115756519697-1920x1078we.jpg",
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                              // opacity: const AlwaysStoppedAnimation(.4),
                              color: Colors.black.withOpacity(0.5),
                              colorBlendMode: BlendMode.multiply,
                              errorBuilder: (context, error, stackTrace) {
                                return Center(child: Text("image error"));
                              },
                            ),
                            top <= 120
                                ? SizedBox()
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(2),
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundImage: NetworkImage(
                                              'https://assets.dpdhl-brands.com/guides/dhl/guides/design-basics/logo-and-claim/logo/versions-01.png'),
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "App store",
                                              textScaleFactor: scaleSize,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Active เมื่อ 10 นาทีที่ผ่านมา",
                                              textScaleFactor: scaleSize,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star_rate_rounded,
                                                  color: Colors.orange,
                                                  size: 20,
                                                ),
                                                Text(
                                                  "4.8/5.0",
                                                  textScaleFactor: scaleSize,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 15),
                                                Text(
                                                  "71.4พัน ผู้ติดตาม",
                                                  textScaleFactor: scaleSize,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                print("click");
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: primaryColor,
                                                shadowColor: Colors.transparent,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons
                                                      .confirmation_num_outlined),
                                                  Text(
                                                    "ติดตาม",
                                                    textScaleFactor: scaleSize,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                print("click");
                                              },
                                              style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                backgroundColor:
                                                    Colors.transparent,
                                                shadowColor: Colors.transparent,
                                                side: BorderSide(
                                                  color: Colors.white,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.chat),
                                                  Text(
                                                    "พูกคุย",
                                                    textScaleFactor: scaleSize,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              primary: false,
              centerTitle: false,
              titleSpacing: 0,
              toolbarHeight: 48,
              automaticallyImplyLeading: false,
              forceElevated: true,
              title: TabBar(
                isScrollable: true,
                controller: _tabController,
                labelColor: primaryColor,
                unselectedLabelColor: Colors.black,
                indicatorColor: primaryColor,
                labelPadding:
                    EdgeInsets.only(top: 13, bottom: 13, left: 16, right: 16),
                tabs: [
                  Text(
                    "ร้านค้า",
                    textScaleFactor: scaleSize,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    "รายการสินค้า",
                    textScaleFactor: scaleSize,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    "หมวดหมู่",
                    textScaleFactor: scaleSize,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(),
                  ),
                  Text(
                    "สมาชิกร้านค้า",
                    textScaleFactor: scaleSize,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kanit(),
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: pages,
        ),
      ),
    );
  }
}
