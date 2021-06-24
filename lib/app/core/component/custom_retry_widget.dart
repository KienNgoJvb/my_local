import 'package:flutter/material.dart';
import 'package:my_local/app/core/component/custom_text_button.dart';
import 'package:my_local/app/core/values/strings.dart';

class CustomRetryWidget extends StatelessWidget {
  final String error;
  final VoidCallback onPressed;

  const CustomRetryWidget({
    Key? key,
    required this.onPressed,
    this.error = Strings.somethingWentWrong,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(error),
          SizedBox(height: 16),
          CustomTextButton(
            buttonWidth: 85,
            height: 45,
            onPressed: onPressed,
            title: Strings.retry,
          ),
        ],
      ),
    );
  }
}
