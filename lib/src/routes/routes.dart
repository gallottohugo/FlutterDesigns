import 'package:flutter/material.dart';
import 'package:flutter_designs/src/pages/advanced_page.dart';
import 'package:flutter_designs/src/pages/basic_page.dart';
import 'package:flutter_designs/src/pages/home_page.dart';
import 'package:flutter_designs/src/pages/intermediate_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
	return <String, WidgetBuilder> {
    	'home'         : (BuildContext context) => HomePage(),
		'basic'        : (BuildContext context) => BasicPage(),
		'intermediate' : (BuildContext context) => IntermediatePage(),
		'advanced'     : (BuildContext context) => AdvancedPage(),
	};
}