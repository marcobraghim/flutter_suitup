import 'package:flutter/material.dart';

import '../suitup_colors.dart';
import 'widgets/app_back_button_widget.dart';
import 'widgets/app_bottom_app_bar_widget.dart';

class LayoutWidget extends StatelessWidget {
  final Widget content;
  final Widget? title;
  final List<Widget>? appBarActions;
  final Color? bgColor;
  final PreferredSizeWidget? appBar;
  final bool showBottomSheet;
  final bool showBackButton;
  final void Function()? fabOnPressed;
  final void Function()? backButtonOnPressed;

  const LayoutWidget({
    Key? key,
    required this.content,
    this.title,
    this.appBarActions,
    this.bgColor,
    this.appBar,
    this.showBottomSheet = false,
    this.showBackButton = false,
    this.fabOnPressed,
    this.backButtonOnPressed,
  })  : assert(title == null || appBar == null, 'Can`t inform title and appBar at the same time'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBar ??
          (title != null
              ? AppBar(
                  backgroundColor: bgColor ?? Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Theme.of(context).scaffoldBackgroundColor,
                  elevation: 0,
                  title: title,
                  centerTitle: true,
                  actions: appBarActions,
                )
              : null),
      body: SafeArea(
        top: true,
        bottom: false,
        left: false,
        right: false,
        child: showBackButton
            ? AppBackButtomWidget(
                backButtonOnPressed: backButtonOnPressed,
                child: content,
              )
            : content,
      ),
      bottomNavigationBar: showBottomSheet == false ? null : const AppBottomAppBarWidget(),
      floatingActionButton: showBottomSheet == false
          ? null
          : FloatingActionButton(
              backgroundColor: SuitupColors.primaryContrast,
              onPressed: fabOnPressed,
              child: const Icon(Icons.add, size: 32),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: showBottomSheet,
    );
  }
}
