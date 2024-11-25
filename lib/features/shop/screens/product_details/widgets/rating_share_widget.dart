
import 'package:e_commerce_app_with_firebase/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        //rating
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(199)'),
            ]))
          ],
        ),

        //share button
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: TSizes.iconMd,
            ))
      ],
    );
  }
}