import 'package:flutter/material.dart';
import '../../../models/Recommendation.dart';
import '../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(recommendation.source!),
          SizedBox(height: defaultPadding / 2),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
