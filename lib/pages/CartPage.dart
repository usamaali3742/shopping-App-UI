import 'package:flutter/material.dart';

import '../widgets/CartAppBarr.dart';
import '../widgets/CartBottomNavBar.dart';
import '../widgets/CartItemSamples.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            // temporary height
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35),
                topRight: Radius.circular(35)),
            ),
            child: Column(
              children: [
                CartItemSamples(),
                Container(
                //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Add Coupon Code', style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold, fontSize: 16),),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
