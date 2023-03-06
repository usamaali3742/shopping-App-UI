import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: Colors.white,
      child: Row(
        children: [
          Icon(Icons.sort, size: 30,color: Colors.orange,),
          Padding(padding: EdgeInsets.only(left: 20),child: Text('Smart Shop', style: TextStyle(fontSize: 23,
              fontWeight: FontWeight.bold,color: Colors.orange),
          ),
          ),
          Spacer(),
          Badge(
            badgeStyle: BadgeStyle(badgeColor: Colors.purple,padding: EdgeInsets.all(7)),
            badgeContent: Text('3', style: TextStyle(color: Colors.white),),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(Icons.shopping_bag_outlined, size: 32,color: Colors.orange,),
            ),
          ),
        ],
      ),
    );
  }
}
