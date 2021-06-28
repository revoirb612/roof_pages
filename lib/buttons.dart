import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;
  MainButton(this.onPressed, this.child);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.all(10),
          width: 100,
          child: Center(child: child),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey)),
      ),
    );
  }
}
