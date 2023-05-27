import 'dart:convert';

import 'package:emarket_1/test/category_json.dart';
import 'package:emarket_1/test/category_model.dart';
import 'package:emarket_1/theme.dart';
import "package:flutter/material.dart";

class ProductionTwoPage extends StatefulWidget {
  const ProductionTwoPage({super.key});

  @override
  State<ProductionTwoPage> createState() => _ProductionTwoPageState();
}

class _ProductionTwoPageState extends State<ProductionTwoPage> {
  int selectedIndex = 0;
  PageController _pageController = PageController();

  CategoryModel? category;
  callAPI() async {
    // var res = json.encode(categoryData);
    category = CategoryModel.fromJson(categoryData);
  }

  @override
  void initState() {
    callAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "หมวดหมู่",
          textScaleFactor: scaleSize,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Container(
              width: 100,
              child: ListView.separated(
                itemCount: category!.category!.isNotEmpty
                    ? category!.category!.length
                    : 0,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 0);
                },
                itemBuilder: (context, index) {
                  Category only = category!.category![index];
                  Color color = Colors.black;
                  Color iconColor = Colors.grey;
                  if (selectedIndex == index) {
                    color = primaryColor;
                    iconColor = primaryColor;
                  }
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        _pageController.jumpToPage(index);
                      });
                    },
                    child: Container(
                      constraints: BoxConstraints(minHeight: 100),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.grey.shade100,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            color: iconColor,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${only.categoryTitle}",
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              color: color,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.7,
                    ),
                    padding: EdgeInsets.zero,
                    itemCount: category!.category![selectedIndex].type!.isEmpty
                        ? 0
                        : category!.category![selectedIndex].type!.length,
                    itemBuilder: (context, index) {
                      Type only =
                          category!.category![selectedIndex].type![index];
                      return GestureDetector(
                        onTap: () {
                          print("go next $index");
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "${only.images}",
                                      height: 150.0,
                                      width: 100.0,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Center(
                                            child: Text(
                                          "image error",
                                          textScaleFactor: scaleSize,
                                        ));
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${only.titleType}",
                                        textScaleFactor: scaleSize,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
