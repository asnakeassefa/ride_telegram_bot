import 'package:flutter/material.dart';

class HomeErrorWidget extends StatelessWidget {
 final String error;

  const HomeErrorWidget({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [Text(error, textAlign: TextAlign.center,)],
      ),
    );
  }
}
