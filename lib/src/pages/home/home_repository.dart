import 'package:dio/dio.dart';
import 'package:meetup_bh/src/app/app_module.dart';
import 'package:meetup_bh/src/shared/repository/customdio.dart';

class HomeRepository{

  Dio dio;

  HomeRepository(this.dio){
    dio = AppModule.to.getDependency<CustomDio>().client;
  }

  Future<List> getPhotos() async{
  var response = await dio.get("/photos");
   return response.data;
  }

}