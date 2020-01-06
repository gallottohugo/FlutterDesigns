import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  	@override
  	Widget build(BuildContext context) {
    	return Scaffold(
			body: PageView(
				scrollDirection: Axis.vertical,
				children: <Widget>[
					_page1(),
					_page2(),
				],
			),
    	);
  	}


	Widget _page1(){
		return Stack(
			children: <Widget>[
				_backgroundColor(),
				_backgrounImage(),
				_newTexts(),
			],
		);
	}


	Widget _backgroundColor(){
		return Container(
			width: double.infinity,
			height: double.infinity,
			//color: Colors.red,
			color: Color.fromRGBO(108, 192, 218, 0.5),
		);
	}

	Widget _backgrounImage(){
		return Container(
			width: double.infinity,
			height: double.infinity,
			child: Image(
				image: AssetImage('assets/scroll-1.png'),
				fit: BoxFit.cover,
			),
		
		);
	}

	Widget _newTexts(){
		final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);
		return SafeArea(
			child: Column(
				children: <Widget>[
					SizedBox(height: 50.0,),
					Text('11°', style: textStyle,),
					Text('Miercoles', style: textStyle,),
					Expanded(child: Container(),),
					Icon(Icons.keyboard_arrow_down, size:70.0, color: Colors.white)
				],
		  	),
		);
	}

	Widget _page2(){
		return Container(
			width: double.infinity,
			height: double.infinity,
			color: Color.fromRGBO(108, 192, 218, 0.5),
			child: Center(
				child: RaisedButton(
					shape: StadiumBorder(),
					color: Colors.blue,
					textColor: Colors.white,
					child: Text('Bienvenidos', style: TextStyle(fontSize: 25.0),),
					padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
					onPressed: (){

					},
				)
			),
		);
	}
}