import 'package:flutter/material.dart';
import 'package:flutter_ptf/screens/constants.dart';
import '../../../models/Project.dart';
import '../../responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
              height: defaultPadding / (Responsive.isDesktop(context) ? 1 : 2)),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.5),
            ),
          ),
          if (Responsive.isDesktop(context)) SizedBox(height: defaultPadding),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
