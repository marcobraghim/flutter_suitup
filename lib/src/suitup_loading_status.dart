import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SuitupLoading {
  SuitupLoading._();

  static initOnMain() => EasyLoading.instance
    ..displayDuration = const Duration(seconds: 5)
    ..indicatorType = EasyLoadingIndicatorType.doubleBounce
    ..loadingStyle = EasyLoadingStyle.dark
    ..fontSize = 16.0
    ..maskType = EasyLoadingMaskType.custom
    ..maskColor = Colors.black.withOpacity(0.3)
    ..userInteractions = false
    ..dismissOnTap = false;

  static show([String text = 'Aguarde...']) => EasyLoading.show(status: text);
  static dismiss() => EasyLoading.dismiss();

  /// Default message: Algo deu errado, tente novamente
  static error([String? msg]) => EasyLoading.showError(msg ?? 'Algo deu errado, tente novamente');

  /// Default message: Alterado com sucesso!
  static success([String? msg]) => EasyLoading.showSuccess(msg ?? 'Alterado com sucesso!');

  static info(String msg) => EasyLoading.showInfo(msg);
  static toast(String msg) => EasyLoading.showToast(msg);
}
