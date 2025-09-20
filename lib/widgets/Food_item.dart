import 'package:flutter/material.dart';
class FoodItem extends StatelessWidget {
  const FoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 183,
      width: 152,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 4,
                blurStyle: BlurStyle.outer,
                offset: const Offset(0.0, 0.5)
            )]
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Icon(Icons.favorite_border,color: Colors.grey,size: 20,
            ),
          ),
          Expanded(
            child:
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/alfredo.jpg"),
            ),
          ),
          SizedBox(height:10,),
          Text("Honey line combo"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$20,00"),
              Icon(Icons.add_circle,color: Colors.orangeAccent,)
            ],
          )
        ],
      ),
    );
  }
}