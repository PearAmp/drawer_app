import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: unused_element
void showAlertDialog(
    {required BuildContext context,
    String? title,
    Widget? subtitle,
    List<Widget>? actions}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
        title: title == null
            ? const SizedBox()
            : Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black),
              ),
        content: subtitle ?? const SizedBox(),
        actions: actions ?? []),
  );
}

buttonActionDialog(
    {required BuildContext context,
    bool? isDefaultAction,
    Function()? onPressed,
    required Widget child}) {
  return CupertinoDialogAction(
    /// This parameter indicates this action is the default,
    /// and turns the action's text to bold text.
    isDefaultAction: isDefaultAction ?? true,
    onPressed: onPressed,
    child: child,
  );
}

void showAlertDialogLoading(
    {required BuildContext context,
    String? title,
    required Widget subtitle,
    List<Widget>? actions}) {
  showCupertinoModalPopup<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => subtitle,
  );
}
