import 'package:dio/dio.dart';

class CustomDio{

  final Dio client;

  CustomDio(this.client){
    client.options.baseUrl =  "https://jsonplaceholder.typicode.com";
  }

}