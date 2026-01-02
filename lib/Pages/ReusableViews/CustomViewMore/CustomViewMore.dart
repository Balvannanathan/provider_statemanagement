import 'package:flutter/material.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';
import 'package:provider_statemanagement/Helper/Resources/Styles.dart';

class CustomViewMore extends StatelessWidget {
  final String text;
  final Function? onClick;
  final double? padding;
  const CustomViewMore({
    super.key,
    required this.text,
    this.onClick,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 31.w),
      child: Row(
        children: [
          Text(text, style: Styles.subSectionTitle),

          Spacer(),
          Visibility(
            visible: onClick != null,
            child: GestureDetector(
              onTap: () => onClick != null ? onClick!() : null,
              child: Text(
                'View More',
                style: Styles.carouselDescription.copyWith(
                  color: AppColors.viewMoreText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
