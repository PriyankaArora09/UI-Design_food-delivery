//import 'package:first_project/home/food_page_body.dart';
import 'package:first_project/pages/home/food_page_body.dart';
import 'package:first_project/utils/colors.dart';
import 'package:first_project/widgets/big_text.dart';
import 'package:first_project/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("current height:"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          //showing the header
        Container(

            child: Container(
              margin: EdgeInsets.only(top:65, bottom: 15),
                padding: EdgeInsets.only(left:20, right:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "India", color: AppColors.mainColor,size: 35,  ),
                        Row(
                          children: [
                            SmallText(text:"Patiala",color:Colors.black54, size: 14,),
                            Icon(Icons.arrow_drop_down_rounded)
                          ]
                        )

                      ],
                    ),
                    Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.search, color:Colors.white, size: 35,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                    )
                    )
                  ],

                )
            )
        ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child:FoodPageBody(),
          )),
        ],
      )
    );
  }
}
