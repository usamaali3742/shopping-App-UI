import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Total:",style: TextStyle(color: Colors.orange,fontSize: 22,fontWeight: FontWeight.bold
              ),
              ),
                Text('\$250', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange
                ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
            height: 50,
              width: double.infinity,
            decoration: BoxDecoration(color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            ),
             child: Text('Check Out',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
