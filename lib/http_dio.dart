

import 'package:dio/dio.dart';

void main(){

  // Dio dio = new Dio();
  // Response response = await dio.get("http://www.wanandroid.com/banner/json");
  // print(response.data.runtimeType);

  Dio().get("http://www.wanandroid.com/banner/json").then((value) {
    print(value.data);
  });
}