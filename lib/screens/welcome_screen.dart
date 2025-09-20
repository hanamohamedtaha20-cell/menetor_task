import 'package:flutter/material.dart';
import 'package:menetor_task/thems/App_colors.dart';
import 'package:menetor_task/widgets/Home_view.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(alignment: Alignment.center,
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                color: AppColors.primarycolor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )
            ),
            child: SizedBox(
                width: 250,
                height: 250,
                child: Image.asset("images/fruit_remove.png",fit: BoxFit.cover)
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get Thr Freshest Fruit Salad Combo",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 20
                ),),
                SizedBox(height: 5,),
                Text("We deliver the best and freshest fruit salad in town. Order for a combo today!!!",style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                ),),
                SizedBox(height: 58,),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeView()));
                }, child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 15,),),
                   style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primarycolor,
                      minimumSize: Size(double.infinity, 56)
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}