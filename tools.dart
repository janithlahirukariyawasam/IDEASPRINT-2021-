import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

          // primarySwatch: Colors.blue,
          ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/ss.JPG"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0.5),
        appBar: AppBar(
          title: Row(
            children: [
              Text('මෙවලම් සහ පොහොර'),
              SizedBox(
                width: 50,
              ),
              Icon(Icons.search),
              SizedBox(
                width: 30,
              ),
              Icon(Icons.shopping_cart),
            ],
          ),
          backgroundColor:/* Colors.green.shade400*/Colors.teal.shade900,
        ),
        /*Center(
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Container(
              margin: EdgeInsets.only(left: 0, top: 30, right: 0, bottom: 0),
              height: 700,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 9,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'ALGOS',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 75,
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 150,
                        color: Colors.green.shade400,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                              child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.account_circle,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Your Email'),
                              SizedBox(
                                width: 80,
                              ),

                            ],
                          )
                              /* Text(
                            'Buy Agri Products',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )*/
                              )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                              child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.lock,
                                color: Colors.black54,

                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Password'),
                              SizedBox(
                                width: 80,
                              ),
                              Icon(Icons.remove_red_eye,color: Colors.black54,)
                            ],
                          ))),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.green.shade400,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Center(
                              child: Text(
                            'Sign IN',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black54),
                          ))),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Don't have an Account ? Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )
                    ],
                  )),
            ),
          ),
        ),*/
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(children: [
                Text('මෙවලම්',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                SizedBox(width: 10,),
                Icon(

                  Icons.arrow_drop_down,
                color: Colors.white,
                  size: 18,
                )
              ],),
              Container(
                margin: EdgeInsets.only(left: 0, top: 30, right: 0, bottom: 0),
                height: 110,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.4gvHIe1ouyAmlu4oC7XH8QHaFj?pid=ImgDet&rs=1'),
                      ),
                      SizedBox(width: 50,),
                      Text('ට්රැක්ටර්',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 80,),
                      Text('රු 750 hr\nකුලියට',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0, top: 30, right: 0, bottom: 0),
                height: 110,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.7NpUAKFwEZqRj4cMfsGLrAHaFj?pid=ImgDet&rs=1'),
                      ),
                      SizedBox(width: 50,),
                      Text('අත් රේක්කය',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 50,),
                      Text('රු 100\nවිකිණීමට',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0, top: 30, right: 0, bottom: 0),
                height: 110,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.IwvhfUdGIJ__hmkCUGAcRwHaEK?pid=ImgDet&rs=1'),
                      ),
                      SizedBox(width: 50,),
                      Text('නගුල',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 90,),
                      Text('රු 500 hr\nවිකිණීමට',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0, top: 30, right: 0, bottom: 0),
                height: 110,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/R.2d5abfafdbc18d76303ee2e52a782335?rik=Un4oYAdeim5DGg&pid=ImgRaw&r=0'),
                      ),
                      SizedBox(width: 50,),
                      Text('කෘමි නාශක\nබේාතලය',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 60,),
                      Text('රු 1500\nවිකිණීමට',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0, top: 30, right: 0, bottom: 0),
                height: 110,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.rIY4wreReMkk9TXWvS_nKQHaHa?pid=ImgDet&rs=1'),
                      ),
                      SizedBox(width: 50,),
                      Text('උදැල්ල',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 90,),
                      Text('රු 400\nවිකිණීමට',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
