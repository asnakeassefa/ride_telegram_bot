import 'package:flutter/material.dart';

class HomeLoadingWidget extends StatelessWidget {
  final String? message;

  const HomeLoadingWidget({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircularProgressIndicator(
          strokeWidth: 2,
        ),
        if (message != null)
          const SizedBox(
            height: 10,
          ),
        if (message != null)
          Text(
            message!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          )
      ],
    ));
  }
}
