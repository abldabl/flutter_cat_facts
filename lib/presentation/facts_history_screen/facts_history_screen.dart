import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/presentation/base/base_bloc_widget.dart';
import 'package:flutter_cat_facts/presentation/facts_history_screen/bloc/facts_history_bloc.dart';
import 'package:flutter_cat_facts/presentation/widgets/custom_progress_indicator.dart';

import 'widgets/fact_list_widget.dart';
import 'widgets/facts_history_screen_app_bar.dart';

@RoutePage()
class FactsHistoryScreen extends StatelessWidget {
  const FactsHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FactsHistoryScreenAppBar(),
      body: SafeArea(
        child: BaseBlocWidget<FactsHistoryBloc, FactsHistoryEvent, FactsHistoryState>(
          bloc: FactsHistoryBloc(),
          starterEvent: const FactsHistoryEvent.fetchFactList(),
          builder: (_, state, bloc) {
            return state.when(
              loading: () => const CustomProgressIndicator(),
              fetchFactList: (facts) => SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    FactListWidget(facts: facts),
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
