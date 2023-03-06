import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/Home_App_Bar.dart';
import '../widgets/itemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: ListView(
    children: [
      HomeAppBar(),
      Card(
        elevation: 5,
        child: Container(
          // temporary height
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
              topRight: Radius.circular(35),

            )
          ),
          child: Column(
            children: [
              Card(
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(35),borderSide: BorderSide.none),
                elevation: 4,
                child: Container(
                  margin:EdgeInsets.symmetric(horizontal: 15),
                  padding:EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                  width: 300,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(35)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 60,
                        width: 200,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",

                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,color: Colors.orange,
                        size: 27,
                      ),
                    ],
                  ),
                ),
              ),
              // Categories
              Container(
               alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Text('Categories', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),),
              ),
              //Categories Widget
              CategoriesWidget(),
              // items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Text('Best Selling', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.orange),),
              ),
              // Items Widget
              ItemsWidget(),
            ],
          ),
        ),
      ),
    ],
  ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: Colors.orange,
        items: [
          Icon(Icons.home, size: 30,color: Colors.white,),
          Icon(CupertinoIcons.cart_fill,size: 30,color: Colors.white,),
          Icon(Icons.list, size: 30,color: Colors.white,),


        ],

      ),
    );
  }
}
