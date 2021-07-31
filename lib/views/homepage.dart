import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          // onChanged: (val){
          //     controller.searchval = val as RxString;
          // },
          style: TextStyle(
            color: Colors.black,
          ),
          controller: controller.searchTextController,
          decoration: InputDecoration(
              suffix: Icon(Icons.search),
              hintText: "search news",
             ),
        ),
      ),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? Center(child: CircularProgressIndicator())
            : controller.articles.isEmpty
                ? Center(child: Text("No News Found"))
                : Container(
                    child: ListView.separated(
                      itemCount: controller.articles.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: 10,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            controller.articles[index].urlToImage == null ? Container() :
                            Image.network(
                                "${controller.articles[index].urlToImage}") ,
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "${controller.articles[index].title}",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "${controller.articles[index].description}",
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  );
      }),
    );
  }
}
