import 'package:flutter/material.dart';

import '../../../../constants/images_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: const AssetImage(tloginImage),
            height: size.height * 0.3),
        Text(tLoginTitle, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 26 , fontWeight: FontWeight.bold,)),
        const SizedBox(height: 16),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}