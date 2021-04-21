import 'package:example/pages/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class ButtonPage extends StatefulWidget {
  static String tag = '/elements/button';

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    final whiteTextStyle = TextStyle(color: Colors.white, fontSize: 18);
    final darkTextStyle = TextStyle(color: Colors.grey[900], fontSize: 18);

    return Layout.render(
      content: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Here are our pre defined button types',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 20),
                //
                // Monocromatic
                //
                Text(
                  'Monocromatic',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 40),
                  child: _monocromatic(darkTextStyle, whiteTextStyle),
                ),
                //
                // colored
                //
                Text(
                  'Useful colored buttons',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 40),
                  child: _colored(whiteTextStyle, darkTextStyle),
                ),
                //
                // Outline
                //
                Text(
                  'Outline',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 40),
                  child: _outline(darkTextStyle),
                ),
                //
                // Light
                //
                Text(
                  'Colored light buttons',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 40),
                  child: _light(darkTextStyle),
                ),
                //
                // Sizes
                //
                Text(
                  'Sizes',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 40),
                  child: _sizes(darkTextStyle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _outline(TextStyle darkTextStyle) {
    final colors = SuitupSettings.instance.colors;

    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        Button(
          width: 120,
          isOutline: true,
          outlineBackground: Colors.white,
          child: Text('Primary', style: darkTextStyle.copyWith(color: colors.primary)),
          onTap: () => print('Primary button tapped'),
        ),
        Button(
          width: 120,
          isOutline: true,
          type: ButtonType.black,
          child: Text('Black', style: darkTextStyle.copyWith(color: colors.black)),
          onTap: () => print('Black button tapped'),
        ),
        Button(
          width: 100,
          isOutline: true,
          child: Text('Link', style: darkTextStyle.copyWith(color: colors.link)),
          type: ButtonType.link,
          onTap: () => print('Link button tapped'),
        ),
        Button(
          width: 100,
          isOutline: true,
          child: Text('Info', style: darkTextStyle.copyWith(color: colors.info)),
          type: ButtonType.info,
          onTap: () => print('Info button tapped'),
        ),
        Button(
          width: 120,
          isOutline: true,
          child: Text('Success', style: darkTextStyle.copyWith(color: colors.success)),
          type: ButtonType.success,
          onTap: () => print('Info button tapped'),
        ),
        Button(
          width: 120,
          isOutline: true,
          child: Text('Warning', style: darkTextStyle.copyWith(color: colors.warning)),
          type: ButtonType.warning,
          onTap: () => print('Info button tapped'),
        ),
        Button(
          width: 120,
          isOutline: true,
          child: Text('Danger', style: darkTextStyle.copyWith(color: colors.danger)),
          type: ButtonType.danger,
          onTap: () => print('Info button tapped'),
        ),
      ],
    );
  }

  Widget _sizes(TextStyle darkTextStyle) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        Button(
          width: 120,
          type: ButtonType.white,
          size: ButtonSize.small,
          child: Text('Small', style: darkTextStyle),
          onTap: () => print('Small button tapped'),
        ),
        Button(
          width: 120,
          type: ButtonType.white,
          size: ButtonSize.normal,
          child: Text('Normal', style: darkTextStyle),
          onTap: () => print('Normal button tapped'),
        ),
        Button(
          width: 120,
          type: ButtonType.white,
          size: ButtonSize.medium,
          child: Text('Medium', style: darkTextStyle),
          onTap: () => print('Medium button tapped'),
        ),
        Button(
          width: 120,
          type: ButtonType.white,
          size: ButtonSize.large,
          child: Text('Large', style: darkTextStyle),
          onTap: () => print('Large button tapped'),
        ),
      ],
    );
  }

  Widget _light(TextStyle darkTextStyle) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        Button(
          width: 120,
          child: Text('Primary',
              style: darkTextStyle.copyWith(
                color: Color(
                  int.parse('FF00947e', radix: 16),
                ),
              )),
          type: ButtonType.primary,
          isLight: true,
          onTap: () => print('Primary button tapped'),
        ),
        Button(
          width: 120,
          child: Text('Link',
              style: darkTextStyle.copyWith(
                color: Color(
                  int.parse('FF3850b7', radix: 16),
                ),
              )),
          type: ButtonType.link,
          isLight: true,
          onTap: () => print('Link button tapped'),
        ),
        Button(
          width: 120,
          child: Text('Info',
              style: darkTextStyle.copyWith(
                color: Color(
                  int.parse('FF296fa8', radix: 16),
                ),
              )),
          type: ButtonType.info,
          isLight: true,
          onTap: () => print('Info button tapped'),
        ),
        Button(
          width: 120,
          child: Text('Success',
              style: darkTextStyle.copyWith(
                color: Color(
                  int.parse('FF257953', radix: 16),
                ),
              )),
          type: ButtonType.success,
          isLight: true,
          onTap: () => print('Success button tapped'),
        ),
        Button(
          width: 120,
          child: Text('Warning',
              style: darkTextStyle.copyWith(
                color: Color(
                  int.parse('FF946c00', radix: 16),
                ),
              )),
          type: ButtonType.warning,
          isLight: true,
          onTap: () => print('Warning button tapped'),
        ),
        Button(
          width: 120,
          child: Text('Danger',
              style: darkTextStyle.copyWith(
                color: Color(
                  int.parse('FFcc0f35', radix: 16),
                ),
              )),
          type: ButtonType.danger,
          isLight: true,
          onTap: () => print('Danger button tapped'),
        ),
      ],
    );
  }

  Widget _colored(TextStyle whiteTextStyle, TextStyle darkTextStyle) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        Button(
          width: 120,
          child: Text('Primary', style: whiteTextStyle),
          onTap: () => print('Primary button tapped'),
        ),
        Button(
          width: 100,
          child: Text('Link', style: whiteTextStyle),
          type: ButtonType.link,
          onTap: () => print('Link button tapped'),
        ),
        Button(
          width: 100,
          child: Text('Info', style: whiteTextStyle),
          type: ButtonType.info,
          onTap: () => print('Info button tapped'),
          onTapDuration: null,
        ),
        Button(
          width: 120,
          child: Text('Success', style: whiteTextStyle),
          type: ButtonType.success,
          onTap: () => print('Info button tapped'),
        ),
        Button(
          width: 120,
          child: Text('Warning', style: darkTextStyle),
          type: ButtonType.warning,
          onTap: () => print('Info button tapped'),
        ),
        Button(
          width: 120,
          child: Text('Danger', style: whiteTextStyle),
          type: ButtonType.danger,
          onTap: () => print('Info button tapped'),
        ),
      ],
    );
  }

  Widget _monocromatic(TextStyle darkTextStyle, TextStyle whiteTextStyle) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        Button(
          width: 100,
          child: Text('White', style: darkTextStyle),
          type: ButtonType.white,
          onTap: () => print('White button tapped'),
        ),
        Button(
          width: 100,
          child: Text('Light', style: darkTextStyle),
          type: ButtonType.light,
          onTap: () => print('Light button tapped'),
        ),
        Button(
          width: 100,
          child: Text('Dark', style: whiteTextStyle),
          type: ButtonType.dark,
          onTap: () => print('Dark button tapped'),
        ),
        Button(
          width: 100,
          child: Text('Black', style: whiteTextStyle),
          type: ButtonType.black,
          onTap: () => print('Black button tapped'),
        ),
        Button(
          width: 100,
          child: Text('Text', style: darkTextStyle),
          type: ButtonType.text,
          onTap: () => print('Text button tapped'),
        ),
        Button(
          width: 100,
          child: Text('Ghost', style: darkTextStyle),
          type: ButtonType.ghost,
          onTap: () => print('Ghost button tapped'),
        ),
      ],
    );
  }
}
