import 'package:flutter/material.dart';
import 'package:provider_statemanagement/BOs/RestaurantBO/RestaurantBO.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';
import 'package:provider_statemanagement/Helper/Resources/Styles.dart';

class CustomRestaurantList extends StatelessWidget {
  final List<RestaurantBO> restaurant;

  const CustomRestaurantList({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 184.h,
      child: ListView.builder(
        itemCount: restaurant.length,
        shrinkWrap: true,
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _cardView(context, index);
        },
      ),
    );
  }

  Widget _cardView(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(
        left: index == 0 ? 25.w : 20.w,
        right: index == restaurant.length - 1 ? 25.w : 0,
      ),
      child: Container(
        width: 150.w,
        height: 184.h,
        decoration: BoxDecoration(
          color: AppColors.secondaryWhite,
          borderRadius: BorderRadius.circular(22.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 5),
              color: AppColors.primaryBlack.withOpacity(0.05),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8.h),
          child: Column(
            children: [
              Image.asset(
                'lib/Helper/Resources/Images/${restaurant[index].image}',
                width: 90.w,
                height: 90.h,
              ),
              SizedBox(height: 17.h),
              Text(
                restaurant[index].name,
                style: Styles.customButtonText.copyWith(
                  color: AppColors.primaryBlack,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '${restaurant[index].arrivingTime} Mins',
                style: Styles.arriveTime,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
