import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapi/views/homepage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        title: "News Api",
       darkTheme: ThemeData.dark(),
       getPages: [
         GetPage(name: "/home", page: ()=> HomePage() ),
        //  GetPage(name: "/home", page: ()=>HomePage()),
       ],
       initialRoute: "/home",
    );
  }
}