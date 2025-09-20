import 'package:flutter/material.dart';
import 'package:menetor_task/thems/App_colors.dart';
import 'Food_item.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,size: 22),
                    Column(
                      children: [
                        Icon(Icons.shopping_cart_rounded,color: AppColors.primarycolor,size: 24,),
                        Text("My basket",style: TextStyle(fontSize: 10,color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text("hello,what fruit salad\ncombo do you want today ? ",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration:InputDecoration(
                            filled: true,
                            fillColor:Colors.grey.shade200,
                            prefixIcon: Icon(Icons.search_outlined,color: Colors.grey,size: 20,),
                            hintText: "Search for fav fruit salad combo ",
                            hintStyle: TextStyle(
                                color: Colors.grey
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),

                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.transparent)
                            )
                        ),),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.tune,color: Colors.black,size:26 ,)
                  ],
                ),
                SizedBox(height: 40,),
                Text("Recomended combo",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return FoodItem();
                      }, separatorBuilder: (context,index)=> SizedBox(width: 20,), itemCount: 5),
                ),
                SizedBox(height: 40,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hottest",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 24),),
                    Text("Popular",style: TextStyle(color: Colors.grey,fontSize: 20),),
                    Text("New combo",style: TextStyle(color: Colors.grey,fontSize: 20),),
                    Text("Top",style: TextStyle(color: Colors.grey,fontSize: 20),),
                  ],
                ),
                SizedBox(height: 20,),

                SizedBox(
                  height: 200,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return FoodItem();
                      }, separatorBuilder: (context,index)=> SizedBox(width: 20,), itemCount: 5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//