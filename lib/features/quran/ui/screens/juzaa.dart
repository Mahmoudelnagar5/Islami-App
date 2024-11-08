import 'package:flutter/material.dart';

import '../../../../core/theming/constants.dart';

class JuzaaScreen extends StatelessWidget {
  const JuzaaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
          top: AppConstants.defaultMargin * 2,
          bottom: AppConstants.defaultMargin * 4,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.defaultPadding,
        ),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 30,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: AppConstants.defaultMargin * .5,
                vertical: AppConstants.defaultMargin * .5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
