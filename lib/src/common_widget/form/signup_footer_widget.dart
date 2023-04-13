import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/images_strings.dart';
import '../../constants/text_strings.dart';
import '../../features/authentification/screens/login/login_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
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
        TextButton(
          onPressed: () => Get.to(() => const LoginScreen()),
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: tAlreadyHaveAnAccount,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextSpan(text: tLogin.toUpperCase())
          ])),
        )
      ],
    );
  }
}