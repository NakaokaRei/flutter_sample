import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sample/HomeViewModel.dart';
import 'package:flutter_sample/HomePageBody.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Injects HomeViewModel into this widgets.
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
      ],
      child: Scaffold(
        body: HomePageBodyList(),
        floatingActionButton: Builder(
          builder: (context) => _HomePageFloatingActionButton(),
        ),
      ),
    );
  }
}

class _HomePageFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:
          Provider.of<HomeViewModel>(context, listen: false).incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
