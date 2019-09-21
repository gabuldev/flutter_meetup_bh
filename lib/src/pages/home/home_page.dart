import 'package:flutter/material.dart';
import 'package:meetup_bh/src/pages/home/home_module.dart';
import 'package:meetup_bh/src/shared/models/photoModel.dart';

import 'home_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = HomeModule.to.getBloc<HomeBloc>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: Column(children: <Widget>[
             UserAccountsDrawerHeader(accountEmail:Text("email"),accountName: Text("name"),)
          ],),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      appBar: AppBar(
        
        title: Text("Home"),
      ),
      body: StreamBuilder(
        stream: bloc.photosOut,
        builder: (BuildContext context, AsyncSnapshot snapshot){

              if(snapshot.hasError){
                return Center(child: Text(snapshot.error.toString()),);
              }
              else if(snapshot.hasData){
                List<PhotoModel> list = snapshot.data;
                return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context,index) => ListTile(
                      title: Text(list[index].title),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(list[index].url),
                      ),
                    ),
                );
              } 
              else{
                return Center(child: CircularProgressIndicator(),);
              }
        },
      ),
    );
  }
}
