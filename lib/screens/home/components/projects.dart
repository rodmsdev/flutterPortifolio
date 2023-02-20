import 'package:flutter/material.dart';
import 'package:flutter_ptf/screens/constants.dart';
import '../../../models/Project.dart';
import '../../responsive.dart';
import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: ProjectGridView(
            itemCount: demo_projects.length,
            crossAxisCount: 1,
            childAspectRatio: 2,
            itemBuilder: (context, index) =>
                ProjectCard(project: demo_projects[index]),
          ),
          mobileLarge: ProjectGridView(
            itemCount: demo_projects.length,
            crossAxisCount: 1,
            childAspectRatio: 3,
            itemBuilder: (context, index) =>
                ProjectCard(project: demo_projects[index]),
          ),
          tablet: ProjectGridView(
            itemCount: demo_projects.length,
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: MediaQuery.of(context).size.width < 900 ? 2 : 1.3,
            itemBuilder: (context, index) =>
                ProjectCard(project: demo_projects[index]),
          ),
          desktop: ProjectGridView(
            itemCount: demo_projects.length,
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            itemBuilder: (context, index) =>
                ProjectCard(project: demo_projects[index]),
          ),
        ),
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    required this.itemCount,
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.itemBuilder,
  }) : super(key: key);

  final int itemCount, crossAxisCount;
  final double childAspectRatio;
  final IndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        mainAxisSpacing: defaultPadding,
        crossAxisSpacing: defaultPadding,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
