import 'package:flutter/material.dart';
import 'package:flutter_ptf/models/Recommendation.dart';
import 'package:flutter_ptf/screens/constants.dart';
import 'recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommendations",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_recommendations.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: RecommendationCard(
                    recommendation: demo_recommendations[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
