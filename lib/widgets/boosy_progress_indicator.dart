import 'package:flutter/material.dart';

class BoosyProgressIndicator extends StatelessWidget {
  const BoosyProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

BuildContext? _currentDialogContext;
void showInProgressDialog(BuildContext context) {
  _currentDialogContext = context;
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => const BoosyProgressIndicator(),
  );
}

void closeInProgressDialog() {
  Navigator.pop(_currentDialogContext!);
}
