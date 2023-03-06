import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      for(int i=1; i<4; i++)
      Container(
        width: double.infinity,
        height: 110,
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Radio(value: "", groupValue: "",activeColor: Colors.orange, onChanged: (index){},
            ),
            Container(
              height: 70,
              width: 70,
              margin: EdgeInsets.only(right: 10),
              child: Image.asset("images/$i.png"),

            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Product Title',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.orange),
                ),
                Text("\$55,",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.orange),),
              ],
            ),
            ),
           // Spacer(),
            Padding(padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.delete, color: Colors.red,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),
                          boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                            blurRadius: 10,
                          )],
                       ),
                      child: Icon(CupertinoIcons.plus, size: 16,),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("01",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.orange),),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),
                        boxShadow:[ BoxShadow(color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                        )],
                      ),
                      child: Icon(CupertinoIcons.minus, size: 18,),
                    ),
                  ],
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    ],
    );
  }
}
