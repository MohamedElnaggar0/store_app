import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/auth/presentation/blocs/age_selection_cubit/age_selection_cubit.dart';
import 'package:store_app/features/auth/presentation/blocs/get_ages_cubit/get_ages_cubit.dart';

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        child: BlocBuilder<GetAgesCubit, GetAgesState>(
          builder: (context, state) {
            if (state is GetAgesSuccess) {
              return _ages(state.ages);
            }
            if (state is GetAgesLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is GetAgesFailure) {
              return Center(
                child: Text(state.message),
              );
            }
            return Container();
          },
        ));
  }

  Widget _ages(List<QueryDocumentSnapshot<Map<String, dynamic>>> ages) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context
                .read<AgeSelectionCubit>()
                .selectAge(ages[index].data()['value']);
            Navigator.pop(context);
          },
          child: Text(
            ages[index].data()['value'],
            style: const TextStyle(fontSize: 20),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: ages.length,
    );
  }
}
