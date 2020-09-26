import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_framework/home_page/home_page.dart';
import 'package:flutter_framework/main.dart';

@MaterialAutoRouter(
	routes: <AutoRoute>[
		// initial route is named "/"
		MaterialRoute(page: HomePage, initial: true),
	],
)
class $Router{}