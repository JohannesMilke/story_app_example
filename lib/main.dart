import 'package:flutter/material.dart';
import 'package:story_app_example/page/story_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Stories Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: StoryListPage(),
      );
}
