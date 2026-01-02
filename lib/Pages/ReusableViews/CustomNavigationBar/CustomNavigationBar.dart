import 'package:flutter/material.dart';
import 'package:provider_statemanagement/Helper/Resources/ResponsiveUI.dart';
import 'package:provider_statemanagement/Helper/Resources/Styles.dart';

class CustomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final List<String> navIcons;
  final List<String> selectedNavIcons;
  final List<String> navText;
  final Function(int index)? updateSelectedIndex;
  const CustomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.navIcons,
    required this.selectedNavIcons,
    required this.navText,
    required this.updateSelectedIndex,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h, left: 12.w, right: 12.w),
      child: Container(
        width: 355.w,
        height: 74.h,
        decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          borderRadius: BorderRadius.circular(22.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.dropShadow.withOpacity(0.2),
              offset: const Offset(0, 0),
              blurStyle: BlurStyle.normal,
              blurRadius: 50,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            widget.navIcons.length,
            (index) => index == widget.selectedIndex
                ? Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 20.w : 0,
                      right: index == widget.navIcons.length - 1 ? 15.w : 0,
                    ),
                    child: _selectedNavigationBarItem(index),
                  )
                : GestureDetector(
                    onTap: () {
                      widget.updateSelectedIndex?.call(index);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 39.5.w : 0,
                        right: index == widget.navIcons.length - 1 ? 38.w : 0,
                      ),
                      child: Image.asset(
                        'lib/Helper/Resources/Images/${widget.navIcons[index]}',
                        width: index == 0 ? 20.w : 24.w,
                        height: index == 0 ? 20.h : 24.h,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _selectedNavigationBarItem(int index) {
    return Container(
      width: 105.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: AppColors.primaryDarkGreen.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: index == widget.navIcons.length - 1 ? 20.w : 17.w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/Helper/Resources/Images/${widget.selectedNavIcons[index]}',
              width: 24.w,
              height: 24.h,
            ),
            Spacer(),
            Text(widget.navText[index], style: Styles.navText),
          ],
        ),
      ),
    );
  }
}
