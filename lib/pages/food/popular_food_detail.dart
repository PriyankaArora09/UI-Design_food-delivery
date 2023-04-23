import 'package:first_project/utils/colors.dart';
import 'package:first_project/utils/dimensions.dart';
import 'package:first_project/widgets/app_column.dart';
import 'package:first_project/widgets/app_icon.dart';
import 'package:first_project/widgets/big_text.dart';
import 'package:first_project/widgets/expandable_text_widget.dart';
import 'package:first_project/widgets/icon_and_text_widget.dart';
import 'package:first_project/widgets/small_text.dart';
//import 'package:first_project/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //bg image
          Positioned(
            left:0,
              right:0,
              child: Container(
                width: double.maxFinite,
                height: 325,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/cake.png"
                    )
                  )
                ),
          )),
          //icon widget
          Positioned(
            top:65,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AppIcon(icon: Icons.arrow_back_ios),
                 AppIcon(icon: Icons.shopping_cart_outlined)
               ],
          )),
          //intro of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 305,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Sweet n Soft Bite",),
                    SizedBox(height: 20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: 20,),
                     Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "You can't go wrong with a slice of cake. So just imagine that your birthday party has the task of hand-making a memorable dessert for a little kid.Then a recipe should come as a surprise that it supplies all the sweetness and cuteness altogether. We all have our favorite desserts, and for many people, it’s cake. So I thought that this would be the perfect opportunity to remind everyone why they love eating this delicious treat.")))


                  ],
                ),

          )),

        ],
      ),
          bottomNavigationBar: Container(
            height: 120,
      padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.remove, color:AppColors.signColor ,),
                      SizedBox(width: 10,),
                      BigText(text: "0"),
                      SizedBox(width: 10,),
                      Icon(Icons.add, color: AppColors.signColor,)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),

                  child: BigText(text: "\Rs. 250 | Add to cart", color:Colors.white ,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.mainColor,
                  ),
                )
              ],
            ),
    ),
    );
  }
}
