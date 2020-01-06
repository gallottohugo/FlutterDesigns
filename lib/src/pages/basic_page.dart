

import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
			body: SingleChildScrollView(
				child: SafeArea(
					child: Column(
						children: <Widget>[
							_newImage(),
							_newDescription(),
							Divider(),
							_newActions(),
							Divider(),
							_newText(),
							_newText(),
							_newText(),
							_newText(),
							
						],
					)
				),
			)
    	);
  	}

	Widget _newImage(){
		return Container(
			width: double.infinity,
			child: Image(
				image: NetworkImage('https://images.adsttc.com/media/images/5d65/223d/284d/d183/fc00/002c/newsletter/feature_-_IMG_5467.jpg?1566908973'),
				height: 200.0,
				fit: BoxFit.cover,
			),
		);
	}

	Widget _newDescription(){
		final styleTitle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
		final styleDescription = TextStyle(fontSize: 12.0, color: Colors.grey);
		return Container(
			padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
			child: Row(
				children: <Widget>[
					Expanded(
						child: Column(
					  	crossAxisAlignment: CrossAxisAlignment.start,
					  	children: <Widget>[
					  		Text('Hotel EMPEDRADO', style: styleTitle,),
					  		SizedBox(height: 10.0,),
					  		Text('Hotel con diseño moderno en las sierras cordobesas', style: styleDescription,),
					  	],
					  ),
					),
					Icon(Icons.star, color: Colors.red, size: 30.0),
					Text('41', style: TextStyle(fontSize: 20.0),)
				],
			),
		);
	}

	Widget _newActions(){
		return Row(
			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			children: <Widget>[
				_action(Icons.call, 'CALL'),
				_action(Icons.near_me, 'ROUTE'), 
				_action(Icons.share, 'SHARE')
			],
		);
	}

	Widget _action(IconData icon, String text){
		return Column(
			children: <Widget>[
				Icon(icon, color: Colors.blue, size: 40.0,),
				Text(text, style: TextStyle(color: Colors.blue),)
			],
		);
	}

	Widget _newText(){
		return Container(
			padding: EdgeInsets.symmetric(horizontal:30.0, vertical: 20.0),
		  	child: Text(
		  		'Deserunt minim aute labore ex. Commodo dolore velit aute eiusmod pariatur. Dolore ex deserunt commodo aute velit nulla do ut consequat amet. Quis nostrud sit voluptate minim. Culpa cupidatat cupidatat aute voluptate esse reprehenderit officia esse adipisicing ea fugiat consectetur voluptate. Do aute nostrud incididunt nisi fugiat voluptate tempor magna aliquip.',
		  		textAlign: TextAlign.justify,
		  	),
		);
	}
}