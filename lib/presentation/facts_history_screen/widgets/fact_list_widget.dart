import 'package:flutter/material.dart';
import 'package:flutter_cat_facts/app/utils/time_map_helper.dart';
import 'package:flutter_cat_facts/data/models/dto/facts/fact_dto.dart';
import 'package:flutter_cat_facts/presentation/widgets/fact_card.dart';

class FactListWidget extends StatelessWidget {
  final List<FactDto> facts;
  const FactListWidget({super.key, required this.facts});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: facts.length,
      itemBuilder: (_, i) => FactCard(
        factText: facts[i].fact,
        createDate: TimeMapHelper.dateForFactItem(facts[i].createDate),
      ),
      separatorBuilder: (_, __) => const SizedBox(height: 10),
    );
  }
}
