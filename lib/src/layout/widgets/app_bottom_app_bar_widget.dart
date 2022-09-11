import 'package:flutter/material.dart';
import 'package:flutter_suitup/src/layout/widgets/bottom_app_bar_item.dart';

import '../../suitup_colors.dart';

class AppBottomAppBarWidget extends StatelessWidget {
  final List<BottomAppBarItem> bottomAppBarItems;

  const AppBottomAppBarWidget({
    Key? key,
    this.bottomAppBarItems = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 8,
      color: SuitupColors.contrastHigh,
      // color: Colors.grey[900],
      shape: const CircularNotchedRectangle(),
      child: IconTheme(
        data: IconThemeData(color: SuitupColors.surface),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(bottomAppBarItems.length, (index) {
            final item = bottomAppBarItems[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: item.action,
                  iconSize: 32,
                  icon: Icon(item.icon),
                ),
                Text(item.title),
              ],
            );
          }),
          // [
          //   Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       IconButton(
          //         icon: const Icon(Icons.bug_report_outlined),
          //         iconSize: 32,
          //         onPressed: () => Routerer.push(SupportPage.routeName),
          //       ),
          //       const Text('SUPORTE')
          //     ],
          //   ),
          //   Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       IconButton(
          //         icon: const Icon(Icons.settings),
          //         iconSize: 32,
          //         onPressed: () => Routerer.push(SettingsPage.routeName),
          //       ),
          //       const Text('AJUSTES')
          //     ],
          //   ),
          // ],
        ),
      ),
    );
  }
}
