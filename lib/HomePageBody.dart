import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sample/HomeViewModel.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            Provider.of<HomeViewModel>(context).counter.toString(),
          ),
        ],
      ),
    );
  }
}

class HomePageBodyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
                Provider.of<HomeViewModel>(context).numbers[index].toString(),
                style: TextStyle(fontSize: 22.0)),
          ),
        );
      },
      itemCount: Provider.of<HomeViewModel>(context).numbers.length,
    );
  }
}
