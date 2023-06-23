import 'package:flutter/material.dart';
import 'package:get/get.dart';

buildCustomModalWrapper(BuildContext context, {Widget? widget}) async {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  if (!Get.isDialogOpen!) {
    return Get.dialog(
      WillPopScope(
        onWillPop: () => Future<bool>.value(false),
        child: Material(
          elevation: 0.0,
          child: Container(
            color: Color(0XFF1F2937),
            child: widget ??
                GestureDetector(
                  onTap: Get.back,
                  child: const Text('Dialog'),
                ),
          ),
        ),
      ),
      useSafeArea: false,
      barrierDismissible: false,
      barrierColor: Color(0XFF1F2937),
      transitionCurve: Curves.easeInOutBack,
// transitionDuration: ,
      navigatorKey: navigatorKey,
      routeSettings: const RouteSettings(name: '/loader-modal'),
    );
  }
}

showLoaderWidget(BuildContext context, {String? message}) {
  buildCustomModalWrapper(
    context,
    widget: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'images/reat.png',
        ),
        const SizedBox(height: 17),
        Semantics(
          child: Text(
            message ?? 'Processing...',
            semanticsLabel: message ?? 'Processing...',
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}
