import 'package:flutter/material.dart';
import 'package:monch/src/common/widgets/styles/spacing_styles.dart';
import 'package:monch/src/utils/constants/sizes.dart';
import 'package:monch/src/utils/helpers/helper_functions.dart';

class MockScreen extends StatelessWidget {
  const MockScreen({super.key, required this.image, required this.title});

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MonchSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                  image: AssetImage(image),
                  width: MonchHelperFunctions.screenWidth() * 0.6),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),

              // Title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MonchSizes.spaceBwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
