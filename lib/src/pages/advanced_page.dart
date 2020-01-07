import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvancedPage extends StatelessWidget {
  	@override
  	Widget build(BuildContext context) {

		SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
			statusBarColor: Colors.transparent,
		));

    	return Scaffold(
			body: Stack(
				children: <Widget>[
					_pageBackground(),
					SingleChildScrollView(
						child: Column(
							children: <Widget>[
								_titles(),
								_buttonsTable(),
							],
						),
					)
				],
			), 
			bottomNavigationBar: _bottomNavigationBar(context)

      	);
  	}


	Widget _pageBackground(){
		final _background = Container(
			width: double.infinity,
			height: double.infinity,
			decoration: BoxDecoration(
				gradient: LinearGradient(
					begin: FractionalOffset(0.0, 0.1),
					end: FractionalOffset(0.0, 1.0),
					colors: [Color.fromRGBO(221, 216, 249, 1.0), Color.fromRGBO(21, 59, 92, 1.0)]
				)
			),
		);

		final _pinBox = Transform.rotate(
			angle: -pi / 5.0,
			child: Container(
				height: 320.0,
				width: 320.0,
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(50.0),
					gradient: LinearGradient(
						begin: FractionalOffset(0.0, 0.5),
						end: FractionalOffset(0.0, 1.0),
						colors: [Colors.pink, Color.fromRGBO(250, 202, 202, 1.0)]
					)
				),
			),
		);


		return Stack(
			children: <Widget>[
				_background,
				Positioned(
					top: -50,
					child: _pinBox,
				)
				
			],
		);

	}

	Widget _titles(){
		return SafeArea(
			child: Container(
				padding: EdgeInsets.all(20.0),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						Text(
							'Portfolio empresarial', 
							style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
						),
						SizedBox(height: 10.0,),
						Text(
							'Caracteristicas de cada projecto con sus propiedades', 
							style: TextStyle(fontSize: 15.0, color: Colors.white,),
						)
					],
				),
		  	),
		);
	}

	Widget _bottomNavigationBar(BuildContext context){
		return Theme(
			data: Theme.of(context).copyWith(
				canvasColor: Color.fromRGBO(21, 59, 100, 1.0),
				primaryColor: Colors.white,
				textTheme: Theme.of(context).textTheme.copyWith(
					caption: TextStyle(color: Colors.grey)
				)
			),
			child: BottomNavigationBar(
				fixedColor: Colors.blue,
				items: <BottomNavigationBarItem>[
					BottomNavigationBarItem(
						icon: Icon(Icons.perm_scan_wifi, size: 35.0,),
						title: Text('Alert')
					),
					BottomNavigationBarItem(
						icon: Icon(Icons.settings, size: 35.0,),
						title: Text('Settings')
					),
					BottomNavigationBarItem(
						icon: Icon(Icons.lock, size: 35.0,),
						title: Text('Lock')
					)
				],
			)
		);
	}

	Widget _buttonsTable(){
		return Table(
			children: <TableRow>[
				TableRow(
					children: <Widget>[
						_button(Colors.blue, Icons.border_all, 'General'),
						_button(Colors.purpleAccent, Icons.delete_forever, 'Trash'),
					]
				),
				TableRow(
					children: <Widget>[
						_button(Colors.pinkAccent, Icons.mode_edit, 'Pencil'),
						_button(Colors.orange, Icons.drafts, 'Drafts'),
					]
				),
				TableRow(
					children: <Widget>[
						_button(Colors.blueAccent, Icons.navigate_next, 'Next'),
						_button(Colors.green, Icons.play_circle_outline, 'Play'),
					]
				),
				TableRow(
					children: <Widget>[
						_button(Colors.teal, Icons.stop, 'Stop'),
						_button(Colors.tealAccent, Icons.style, 'Style'),
					]
				),
			],
		);
	}


	Widget _button(Color iconColor, IconData icon, String title){
		return ClipRect(
			child: BackdropFilter(
				filter: ImageFilter.blur(
					sigmaX: 1.0,
					sigmaY: 1.0
				),
				child: Container(
					height: 180.0,
					margin: EdgeInsets.all(20.0),
					decoration: BoxDecoration(
						color: Color.fromRGBO(62, 66, 107, 0.6),
						borderRadius: BorderRadius.circular(20.0)
					),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.spaceAround,
						children: <Widget>[
							SizedBox(height: 5.0,),
							CircleAvatar(
								radius: 35.0,
								backgroundColor: iconColor,
								child: Icon(icon, size: 35.0,),
							),
							Text(title, style: TextStyle(color: Colors.white60, fontSize:20.0),),
							SizedBox(height: 5.0,)
						],
					),
		    	),
		  	),
		);
	}
}