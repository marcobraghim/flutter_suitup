import 'package:example/pages/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class BoxPage extends StatelessWidget {
  static String tag = '/elements/box';

  @override
  Widget build(BuildContext context) {
    final colors = SuitupSettings.instance.colors;

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
                  'Some examples of boxes',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 20),
                //
                // Examples
                //
                Box(
                  width: double.maxFinite,
                  child: Text('Some content of a box'),
                ),
                Box(
                  backgroundColor: colors.info,
                  child: Text(
                    'Some content of a box',
                    style: TextStyle(color: colors.white),
                  ),
                ),
                Box(
                  backgroundColor: colors.warning,
                  child: Text(
                    'Mussum Ipsum, cacilds vidis litro abertis. Cevadis im ampola pa arma uma pindureta. Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Quem num gosta di mim que vai caçá sua turmis! Delegadis gente finis, bibendum egestas augue arcu ut est. Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. A ordem dos tratores não altera o pão duris. Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.',
                  ),
                ),
                Box(
                  width: double.maxFinite,
                  backgroundColor: colors.danger,
                  child: Text(
                    'This is another example of text',
                    style: TextStyle(color: colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
