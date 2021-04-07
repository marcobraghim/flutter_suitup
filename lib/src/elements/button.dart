import 'package:flutter/widgets.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

//
// .button {
//   background-color: white;
//   border-color: #dbdbdb;
//   border-width: 1px;
//   color: #363636;
//   cursor: pointer;
//   justify-content: center;
//   padding-bottom: calc(0.5em - 1px);
//   padding-left: 1em;
//   padding-right: 1em;
//   padding-top: calc(0.5em - 1px);
//   text-align: center;
//   white-space: nowrap;
// }
//

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final s = SuitupSettings.instance;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: s.em, vertical: s.em / 2),
    );
  }
}
