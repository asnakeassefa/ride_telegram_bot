import 'package:commercepal/app/utils/dialog_utils.dart';
import 'package:commercepal/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

class ForceUpdatePage extends StatelessWidget {
  static const routeName = "/force_update";

  const ForceUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.update,
                size: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please update the app",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Please update to continue using the app"),
              const SizedBox(
                height: 30,
              ),
              AppButtonWidget(
                  text: "Update",
                  onClick: () {
                    try {
                      StoreRedirect.redirect();
                    } catch (e) {
                      displaySnack(context, "Unable to redirect to store");
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
