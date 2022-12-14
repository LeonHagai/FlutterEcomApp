import 'package:ecom/utils/colors.dart';
import 'package:ecom/utils/dimensions.dart';
import 'package:ecom/widgets/app_icon.dart';
import 'package:ecom/widgets/big_text.dart';
import 'package:ecom/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReccomendedFoodDetail extends StatelessWidget {
  const ReccomendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(
                  icon: Icons.shopping_basket_outlined,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius15),
                    topRight: Radius.circular(Dimensions.radius15),
                  ),
                ),
                child: Center(
                  child: BigText(text: "Kuon' gi Omena"),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.height300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food9.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: const ExpandableTextWidget(
                    text:
                        "Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better. Don't be the same, be Better,Don't be the same, be Better.Don't be the same, be Better.Don't be the same, be Better."),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.icon24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\$12.88  X  1",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.icon24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              right: Dimensions.width20,
              left: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(
                    text: "\$12.88 | Add to cart",
                    color: Colors.white,
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
