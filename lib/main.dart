import 'package:flutter/material.dart';
//import 'package:flutter_designs/src/pages/basic_page.dart';
import 'package:flutter_designs/src/pages/home_page.dart';
import 'package:flutter_designs/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Material App',
			initialRoute: 'scroll',
			routes: getApplicationRoutes(),
			
		);
	}
}