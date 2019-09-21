import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:meetup_bh/src/pages/home/home_module.dart';
import 'package:meetup_bh/src/pages/home/home_repository.dart';
import 'package:meetup_bh/src/shared/models/photoModel.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BlocBase{

  HomeRepository repo;
  

  HomeBloc(){
    photosOut = photos.switchMap(observablePhotos);
    photosIn = photos.sink;
    repo = HomeModule.to.getDependency<HomeRepository>();
    getPhotos();
  }  

  var photos = BehaviorSubject<List>();
  Observable<List<PhotoModel>> photosOut;
  Sink<List> photosIn;

  Stream<List<PhotoModel>> observablePhotos(List data) async*{

      if(data.isNotEmpty){
        yield data.map((i) => PhotoModel.fromJson(i)).toList();
      }else{
        throw "Lista vazia";
      }

  }

  void getPhotos()async{

    try{
      var response = await repo.getPhotos();
      photosIn.add(response);  
    }catch(e){
      photos.addError(e);
    }


  }

  @override
  void dispose() {
    photos.close();
    photosIn.close();
    super.dispose();
  }
}
