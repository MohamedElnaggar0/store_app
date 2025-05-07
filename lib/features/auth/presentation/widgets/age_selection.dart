import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/common/helper/app_bottom_sheet.dart';
import 'package:store_app/core/configs/theme/app_color.dart';
import 'package:store_app/features/auth/presentation/blocs/age_selection_cubit/age_selection_cubit.dart';
import 'package:store_app/features/auth/presentation/blocs/get_ages_cubit/get_ages_cubit.dart';
import 'package:store_app/features/auth/presentation/widgets/age.dart';
import 'package:store_app/features/auth/presentation/widgets/custom_text.dart';

class AgeSelection extends StatelessWidget {
  const AgeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AgeSelectionCubit(),
        ),
        BlocProvider(
          create: (context) => GetAgesCubit()..getAges(),
        )
      ],
      child: BlocBuilder<AgeSelectionCubit, String>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => AppBottomSheet.showBottomSheet(
              context,
              MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: (context).read<AgeSelectionCubit>(),
                  ),
                  BlocProvider.value(
                    value: (context).read<GetAgesCubit>(),
                  ),
                ],
                child: const Age(),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColor.lightSecondBackgroundColor
                      : AppColor.darkSecondBackgroundColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(state,
                      fontSize: 16, fontWeight: FontWeight.normal),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
