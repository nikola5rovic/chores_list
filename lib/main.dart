import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/chores_screen.dart';
import './models/task_data.dart';

void main() => runApp(ChoresList());

class ChoresList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: ChoresScreen(),
      ),
    );
  }
}
