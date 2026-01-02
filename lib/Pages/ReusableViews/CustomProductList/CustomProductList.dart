import 'package:flutter/material.dart';
import 'package:provider_statemanagement/BOs/ProductBO/ProductBO.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';
import 'package:provider_statemanagement/Helper/Resources/Styles.dart';

class CustomProductList extends StatelessWidget {
  final List<ProductBO>? productList;
  const CustomProductList({super.key, this.productList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: ListView.builder(
        itemCount: productList?.length ?? 0,
        clipBehavior: Clip.none,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _productCardView(context, index);
        },
      ),
    );
  }

  Widget _productCardView(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Container(
        height: 87.h,
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
        child: ListTile(
          leading: Image.asset(
            'lib/Helper/Resources/Images/${productList![index].image}',
            height: 64.h,
            width: 64.h,
          ),
          title: Text(
            productList![index].name,
            style: Styles.subSectionTitle.copyWith(
              fontFamily: 'BentonSansMedium',
            ),
          ),
          subtitle: Text(
            productList![index].restaurantName,
            style: Styles.productStore,
          ),

          trailing: Text(
            '\$${productList![index].price.toStringAsFixed(0)}',
            style: Styles.carouselContent.copyWith(
              color: AppColors.priceYellow,
            ),
          ),
        ),
      ),
    );
  }
}
