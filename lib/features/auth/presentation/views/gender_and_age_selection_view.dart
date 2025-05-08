import 'package:flutter/material.dart';
import 'package:store_app/features/auth/data/models/user_creation_req.dart';
import 'package:store_app/features/auth/presentation/widgets/gender_and_age_selection_view_body.dart';

class GenderAndAgeSelectionView extends StatelessWidget {
  const GenderAndAgeSelectionView({super.key, required this.signupData});
  final Map<String, dynamic> signupData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GenderAndAgeSelectionViewBody(
        userCreationReq: UserCreationReq(
            email: signupData['email'],
            password: signupData['password'],
            firstName: signupData['firstName'],
            lastName: signupData['lastName'],
            gender: signupData['gender'],
            age: signupData['age']),
      ),
    );
  }
}
