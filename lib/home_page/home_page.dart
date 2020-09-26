import 'package:flutter/material.dart';
import 'package:flutter_framework/home_page/home_page_viewmodel.dart';
import 'package:stacked/stacked.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;

class HomePage extends StatelessWidget {
	HomePage({Key key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<HomePageViewModel>.reactive( //non-reactive
			viewModelBuilder: () => HomePageViewModel(),
		  builder:(context, model, child) =>  Scaffold(
		  	appBar: AppBar(
		  		title: Text('title'),
		  	),
		  	body: Center(
		  		child: Column(
		  			mainAxisAlignment: MainAxisAlignment.center,
		  			children: <Widget>[
		  				Text(
		  					'You have pushed the button this many times:',
		  				),
		  				Text(
		  					model.counter.toString(),
		  					style: Theme.of(context).textTheme.headline4,
		  				),
		  			],
		  		),
		  	),
		  	floatingActionButton: FloatingActionButton(
		  		onPressed: () => model.counterIncrement(),
		  		tooltip: 'Increment',
		  		child: Icon(Icons.add),
		  	),
		  ),
		);
	}
}
