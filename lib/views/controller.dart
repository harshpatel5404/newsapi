import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:newsapi/model/articlemodel.dart';
import 'package:newsapi/services/server_communication.dart';

class NewsController extends GetxController {

NewsController(){
      searchNewsHeadline();
    searchTextController.addListener(() { 
      if(searchTextController.text.length > 3){
        searchNewsHeadline();
      }
    });

  }
  
  final searchTextController = TextEditingController();

  RxBool isLoading = false.obs;

  RxList<Article> articles = RxList();

  searchNewsHeadline() async{

    showLoading();

    final result = await getNewsHeadline(searchTextController.text);

    hideLoading();

    if(result!= null){
      articles = result.obs;
    }else{
      print("No data recieved");
    }
  }

  showLoading(){
    isLoading.toggle();
  }

  hideLoading(){
    isLoading.toggle();
  }
}