
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
			appBar: AppBar(
				title: Text('Flutter designs'),
			),
			body: Column(
				children: <Widget>[
					SizedBox(height: 50.0,),
					Divider(						
					),
					Center(
						child: FloatingActionButton(
							child: Text('B'),
							onPressed: (){
								Navigator.pushNamed(context, 'basic');
							},
						),
					),
					Divider(),
					Center(
						child: FloatingActionButton(
							child: Text('I'),
							onPressed: (){
								Navigator.pushNamed(context, 'intermediate');
							},
						),
					),
					Divider(),
					Center(
						child: FloatingActionButton(
							child: Text('A'),
							onPressed: (){
								Navigator.pushNamed(context, 'advanced');
							},
						),
					),
					
				],
			),
    	);
  	}
}