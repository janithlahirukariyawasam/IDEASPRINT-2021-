import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'data.dart';
import 'detail_page.dart';

class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {"name": "බෝග වගාව", 'courses': 23, 'image': "assets/fff.jpg"},
  {"name": "මගේ දිනපොත", 'courses': 25, 'image': "assets/vvv.jpg"},
  {
    "name": "\n\n\nකාලගුණය",
    'courses': 25,
    'image': "assets/xxx.jpg"
  },
  {
    "name": "\n\n\n\n  ප්‍රවාහනය ",
    'courses': 13,
    'image': "assets/ccc.jpg"
  },
  {"name": "විකිණීම්", 'courses': 17, 'image': "assets/images/business.png"},
  {"name": "\n\n\n\n\n\n\nමිලට ගැනුම්", 'courses': 17, 'image': "assets/images/u.jpg"},
  {
    "name": "මෙවලම්",
    'courses': 25,
    'image': "assets/images/k.jpg"
  },
  {"name": "සැකසුම්", 'courses': 17, 'image': "assets/i.jpg"},
];

//pirith
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //BannerAd _ad;
  //bool isloading;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bac.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.purple.shade50,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 32, right: 32, top: 32.0, bottom: 30),
                child: Text(
                  'බෝග වගාව',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 32.0, right: 32.0, bottom: 30.0),
                  child: Container(
//height: 500,
                    child: Swiper(
                        itemCount: piriths.length,
                        itemWidth: MediaQuery.of(context).size.width - 64 * 2,
                        layout: SwiperLayout.STACK,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              //interstitial ad

                              //interstitial ad
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, a, b) =>
                                      DetailPage(pirithInfo: piriths[index]),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Expanded(
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0),
                                        ),
                                        elevation: 8,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(32.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: SizedBox(
                                                  width: 120,
                                                ),
                                              ),

/*Expanded(
                                              child: SizedBox(
                                                height: 10,
                                              ),
                                            ),*/
                                              Expanded(
                                                child: Text(
                                                  piriths[index].name,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color:
                                                        const Color(0xff47455f),
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              ),

/*Expanded(
                                               child: SizedBox(
                                                     height: 10,
                                              ),
                                           ),*/
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],

// Image.asset('assets/boleave.png'),
                                ),
                                //Image.asset('assets/boleave.png'),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
              //checkForAd(),
              Container(height:50,child: Center(child: Text("කාබනික පොහොර")),),
              SizedBox(height: 16,),
              Container(height:50,child: Center(child: Text("කාබනික කෘමී විකර්ෂක")),),
              SizedBox(height: 16,),

              Container(
                height: 50,
                color: Colors.pink.shade100,
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.favorite,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.home,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.search,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
