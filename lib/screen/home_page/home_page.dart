import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqlite_demo/screen/home_page/homeController.dart';
import 'package:toast/toast.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GetBuilder(
        init: HomeController(),
        builder: (_) {
          return Scaffold(
              appBar: AppBar(
                title: Text("SQL CRUD"),
                centerTitle: true,
                backgroundColor: Colors.blue,
              ),
              body: _.isTrue
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : SafeArea(
                      child: ListView.builder(
                        itemCount: _.allData.length,
                        itemBuilder: (context, index) => Card(
                          margin: EdgeInsets.all(15),
                          child: ListTile(
                            title: Text(_.allData[index]['title']),
                            subtitle: Text(_.allData[index]['desc']),
                            trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(onPressed: (){
                                  showBottomSheet(h,w,_,true,_.allData[index]['id']);
                                }, icon: Icon(Icons.edit)),
                                IconButton(onPressed: (){
                                  _.removeData(_.allData[index]['id']);
                                }, icon: Icon(Icons.delete)),
                              ],
                            )
                          ),
                        ),
                      ),
                    ),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.add),
           onPressed: (){
             showBottomSheet(h,w,_,false,0);
           },
         ),
          );
        });
  }


  showBottomSheet(double h,double w,HomeController _,bool isNot,int updateid){
    Get.bottomSheet(Container(
      height: h/2,
      width: w,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text("Title"),
          SizedBox(height: 5,),
          TextFormField(
            controller: _.titleCon,
            decoration: InputDecoration(
              hintText: "Title ",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
            ),
          ),
          SizedBox(height: 10,),
          Text("Description"),
          SizedBox(height: 5,),
          TextFormField(
            controller: _.descCon,
            decoration: InputDecoration(
                hintText: "Description ",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
            ),
          ),
          SizedBox(height: 20,),
          MaterialButton(onPressed: (){
            if(isNot)
              {
                _.updateData(updateid);
              }
            else
              {
                _.addData();
              }
          },child: Text(isNot ? "UPDATE" : "ADD"),color: Colors.blue,)
        ],
      ),
    ));
  }

}
