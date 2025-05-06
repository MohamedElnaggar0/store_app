import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/configs/theme/app_color.dart';
import 'package:store_app/features/auth/presentation/blocs/gender_selection_cubit/gender_selection_cubit.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenderSelectionCubit(),
      child: BlocBuilder<GenderSelectionCubit, int>(
        builder: (context, selectedIndex) {
          return Row(
            children: [
              genderTile(context, 1, 'Men'),
              const SizedBox(width: 10),
              genderTile(context, 2, 'Women'),
            ],
          );
        },
      ),
    );
  }

  Widget genderTile(BuildContext context, int genderIndex, String gender) {
    return Expanded(
      child: GestureDetector(
        onTap: () =>
            context.read<GenderSelectionCubit>().selectGender(genderIndex),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: context.read<GenderSelectionCubit>().selectedIndex ==
                    genderIndex
                ? AppColor.primaryColor
                : Theme.of(context).brightness == Brightness.light
                    ? AppColor.lightSecondBackgroundColor
                    : AppColor.darkSecondBackgroundColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              gender,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
