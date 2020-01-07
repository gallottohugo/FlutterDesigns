
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
			appBar: AppBar(
				title: Text('Flutter designs'),
			),
			body: Container(
				width: double.infinity,
				height: double.infinity,
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.stretch,
					mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					children: <Widget>[
						_button('Basic', context, 'basic'),
						_button('Scroll Page', context, 'scroll'),
						_button('Advanced', context, 'advanced'),
					],
				)
			)
    	);
  	}

	Widget _button(String title, BuildContext context, String next_page){
		return Center(
			child: RaisedButton(
				shape: StadiumBorder(),
				color: Colors.blue,
				textColor: Colors.white,
				child: Text(title, style: TextStyle(fontSize: 25.0),),
				padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
				onPressed: (){
					Navigator.pushNamed(context, next_page);
				},
			)
		);
	}

	
}