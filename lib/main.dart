import 'package:algos_app/constants.dart';

import 'package:algos_app/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import 'dart:js';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'algos App',
      theme: ThemeData(),
      //home: DetailsScreen(),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       image: DecorationImage(
         image: AssetImage("assets/ddd.jpg"),
         fit: BoxFit.cover,
       ),
      ),
      child:  Scaffold(
         backgroundColor: Colors.transparent,
         //backgroundColor: Image.asset('q.jpg').color,
          body:
              /*Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [Colors.pink.shade100, Colors.pink.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.7],
            )),
            child:*/
              Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            /*child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.pink.shade100, Colors.pink.shade50],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.3, 0.7],
                    )),*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Column(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/menu.svg"),
                    Text("31 °C",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily:'Pacifio',fontWeight: FontWeight.w900),)
                  ],
                ),
                SizedBox(height: 30),
                Container(
                 /* decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),*/
                  child: Text(
                    "Algos",
                    style: TextStyle(
                      fontSize: 66,
                      fontFamily: 'Pacifio',
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Text("For a smart way of farming !",

                  style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w900,)
                  ,),
                SizedBox(height: 60),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Categories", style:TextStyle(fontWeight: FontWeight.w900,fontSize: 20,color: Colors.white)),
                  ],
                ),
                SizedBox(height: 30),
                Expanded(
                  child: StaggeredGridView.countBuilder(
                    padding: EdgeInsets.all(0),
                    crossAxisCount: 2,
                    itemCount: categories.length,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, a, b) => HomePage(),
                            ),
                          );
                        },

                          child: Container(
                            padding: EdgeInsets.all(20),
                            height: index.isEven ? 200 : 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage(categories[index].image),
                                scale: 1,
                                fit: BoxFit.cover,
                                //fit: BoxFit.fill,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 1, // blur radius
                                  offset: Offset(0, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                                //you can set more BoxShadow() here
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  categories[index].name,
                                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),

                      );

                      //);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  ),
                ),
              ],
            ),
          ),
          // ),
        ),
    //  ),
    );
  }
}
