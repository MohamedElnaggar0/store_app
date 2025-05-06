import 'package:flutter/material.dart';
import 'package:store_app/features/auth/presentation/widgets/gender_and_age_selection_view_body.dart';

class GenderAndAgeSelectionView extends StatelessWidget {
  const GenderAndAgeSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GenderAndAgeSelectionViewBody(),
    );
  }
}
