import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/di/injector.dart';
import 'package:flutter_cat_facts/presentation/base/base_bloc_widget.dart';
import 'package:flutter_cat_facts/presentation/fact_screen/bloc/fact_bloc.dart';
import 'package:flutter_cat_facts/presentation/fact_screen/widgets/fact_card.dart';
import 'package:flutter_cat_facts/presentation/fact_screen/widgets/fact_screen_app_bar.dart';
import 'package:flutter_cat_facts/presentation/fact_screen/widgets/fact_screen_bottom_buttons.dart';
import 'package:flutter_cat_facts/presentation/widgets/custom_progress_indicator.dart';
import 'package:flutter_cat_facts/presentation/widgets/error_icon_widget.dart';
import 'package:flutter_cat_facts/presentation/widgets/network_image_widget.dart';

@RoutePage()
class FactScreen extends StatelessWidget {
  const FactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FactScreenAppBar(),
      body: SafeArea(
        child: BaseBlocWidget<FactBloc, FactEvent, FactState>(
          bloc: getIt<FactBloc>(),
          starterEvent: const FactEvent.start(),
          builder: (_, state, bloc) {
            return state.when(
              loading: () => const CustomProgressIndicator(),
              fetchFactError: () => const CustomErrorWidget(),
              fetchFactSuccess: (factText, createDate, catsImageUrl) => SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: NetworkImageWidget(imageUrl: catsImageUrl),
                    ),
                    const SizedBox(height: 20),
                    FactCard(factText: factText, createDate: createDate),
                    const SizedBox(height: 20),
                    FactScreenBottomButtons(
                      anotherFactTap: () => bloc.add(const FactEvent.fetchFact()),
                      factsHistoryTap: () {},
                    ),
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
