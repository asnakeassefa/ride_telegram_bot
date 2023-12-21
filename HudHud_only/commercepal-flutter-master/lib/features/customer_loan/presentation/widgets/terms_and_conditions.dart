import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/utils/app_colors.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  final Function tcChecked;

  const TermsAndConditionsWidget({Key? key, required this.tcChecked})
      : super(key: key);

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
            fillColor: MaterialStateColor.resolveWith(
                    (states) => AppColors.colorPrimaryDark),
            value: isChecked,
            onChanged: (v) {
              widget.tcChecked(v);

              setState(() {
                isChecked = !isChecked;
              });
            }),
        InkWell(
          onTap: () async {
            if (!await launchUrl(Uri.parse("https://commercepal.com/tc"))) {
              throw Exception('Could not launch');
            }
          },
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "I agree to the ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith()),
                TextSpan(
                    text: "Terms and conditions",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.colorPrimaryDark))
              ])),
        )
      ],
    );
  }
}
