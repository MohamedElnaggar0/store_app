import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/basic_app_bar.dart';
import 'package:store_app/features/auth/presentation/widgets/age_selection.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';
import 'package:store_app/features/auth/presentation/widgets/gender_selection.dart';

class GenderAndAgeSelectionViewBody extends StatelessWidget {
  const GenderAndAgeSelectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BasicAppBar(),
          SizedBox(height: 20),
          CustomText('Tell us About Yourself',
              fontSize: 24, fontWeight: FontWeight.normal),
          SizedBox(height: 20),
          GenderSelection(),
          SizedBox(height: 20),
          CustomText(
            'How old are you ?',
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          SizedBox(height: 20),
          AgeSelection(),
          Spacer(),
          CustomButton(text: 'Finish'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
