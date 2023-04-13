import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/images_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight - 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: const Image(image: AssetImage(tGoogleLogoImage), width: 20.0),
              ),
              onPressed: () {
                // Code à executer lorsque l'utilisateur clique sur le bouton Google
              },
            ),
            IconButton(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child:const Image(image: AssetImage(tFacebookImage), width: 25.0),
              ),
              onPressed: () {
                // Code à exécuter lorsque l'utilisateur clique sur le bouton Facebook
              },
            ),
            IconButton(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child:const  Image(image: AssetImage(tTwitterLogoImage), width: 20.0),
              ),
              onPressed: () {
                // Code à exécuter lorsque l'utilisateur clique sur le bouton Twitter
              },
            ),
          ],
        ),
        const SizedBox(height: tFormHeight - 20),
        TextButton(
          onPressed: () => Get.to(() => const SignUpScreen()),
          child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(text: tSignup, style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ],
    );
  }
}