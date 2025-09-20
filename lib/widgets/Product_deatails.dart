import 'package:flutter/material.dart';
import 'package:menetor_task/thems/App_colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  int x =1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AppColors.primarycolor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container( alignment: Alignment.center,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: AppColors.primarycolor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),

            ),
            child: Center(
              child: SizedBox(
                  width: 250,
                  height: 250,
                  child: Image.asset("image/Quinoa Fruit Salad-removebg.png",fit: BoxFit.cover)
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Quinoa Fruit Salad", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              setState(() {
                               x--;
                              });
                            },
                          ),
                          Text("$x", style: TextStyle(fontSize: 18)),
                          IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: () {
                              setState(() {
                               x++;
                              });
                            },
                          ),],
                      ),
                      Text("₦ 2,000",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text("One Pack Contains:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
                  ),

                  SizedBox(height: 5),

                  Container(
                    height: 2,
                    width: 149,
                    color: Colors.amberAccent,
                  ),

                  SizedBox(height: 8),

                  Text("Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                    style: TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),),
                  SizedBox(height: 15),
                  Text("If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you.",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.favorite_border, color: AppColors.primarycolor),
                          onPressed: () {},
                        ),),
                      SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primarycolor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                           onPressed: () {},
                            child: Text("Add to Basket", style: TextStyle(fontSize: 16, color: Colors.white),),
                        ),
                      )],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}