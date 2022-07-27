import 'package:flutter/cupertino.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
        title: Row(
      children: const [
        CupertinoActivityIndicator(),
        SizedBox(
          width: 5,
        ),
        Text("Loading..."),
      ],
    ));
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
}
