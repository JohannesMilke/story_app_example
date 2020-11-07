import 'package:flutter/material.dart';
import 'package:story_app_example/data/users.dart';
import 'package:story_app_example/model/user.dart';
import 'package:story_app_example/widget/story_widget.dart';

class StoryPage extends StatefulWidget {
  final User user;

  const StoryPage({
    @required this.user,
    Key key,
  }) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  PageController controller;

  @override
  void initState() {
    super.initState();

    final initialPage = users.indexOf(widget.user);
    controller = PageController(initialPage: initialPage);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PageView(
        controller: controller,
        children: users
            .map((user) => StoryWidget(
                  user: user,
                  controller: controller,
                ))
            .toList(),
      );
}
