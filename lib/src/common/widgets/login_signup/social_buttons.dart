import 'package:flutter/material.dart';
import 'package:monch/src/utils/constants/colors.dart';
import 'package:monch/src/utils/constants/image_strings.dart';
import 'package:monch/src/utils/constants/sizes.dart';

class MonchSocialButtons extends StatelessWidget {
  const MonchSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MonchColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: MonchSizes.iconM,
                  height: MonchSizes.iconM,
                  image: AssetImage(MonchImages.googleLogo))),
        )
      ],
    );
  }
}
