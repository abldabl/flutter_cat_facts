import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/constants/text_constants.dart';
import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/presentation/base/base_view.dart';
import 'package:flutter_cat_facts/presentation/fact_screen/bloc/fact_bloc.dart';
import 'package:flutter_cat_facts/presentation/fact_screen/widgets/fact_card.dart';
import 'package:flutter_cat_facts/presentation/widgets/error_icon_widget.dart';

@RoutePage()
class FactScreen extends StatelessWidget {
  const FactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BaseBlocWidget<FactBloc, FactEvent, FactState>(
          bloc: getIt<FactBloc>(),
          starterEvent: const FactEvent.start(),
          builder: (context, state, bloc) {
            return state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              fetchFactError: () => const ErrorIconWidget(),
              fetchFactSuccess: (factText, createDate) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Text(
                        TextConstants.appTitle,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    FactCard(factText: factText, createDate: createDate),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
