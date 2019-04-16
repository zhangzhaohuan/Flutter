import 'package:flutter/material.dart';
import 'package:flutter_app2/dart/built_in_types/lists.dart';
import 'package:flutter_app2/dart/built_in_types/maps.dart';
import 'package:flutter_app2/dart/built_in_types/sets.dart';
import 'package:flutter_app2/dart/classes/extends.dart';
import 'package:flutter_app2/dart/constructor/index.dart';
import 'package:flutter_app2/pages/home.dart';
import 'package:flutter_app2/dart/operators/overrideOperator.dart';

class Routes {
  static String dartBuildInTypes = '/dart:core/buildInTypes';
  static String dartBuildInTypesMaps = '/dart:core/buildInTypes/maps';
  static String dartBuildInTypesSets = '/dart:core/buildInTypes/sets';
  static String dartClassExtends = '/dart:core/classes/extends';
  static String dartCoreConstructor = '/dart:core/constructor';
  static String dartCoreDateTime = '/dart:core/dateTime';
  static String home = '/home';
  static String dartCoreOperator = '/dart:core/operator';

  static Map<String, WidgetBuilder> getRoutes() {
    var route = {
      home: (BuildContext context) {
        return new Scaffold(
          appBar: AppBar(
            title: Text('home'),
          ),
          body: Home(),
        );
      },
      dartClassExtends: (BuildContext context) {
        return new Scaffold(
          appBar: AppBar(
            title: Text('dart_classes_extends'),
          ),
          body: ExtendsDemo1(),
        );
      },
      dartBuildInTypes: (BuildContext context) {
        return new Scaffold(
          appBar: AppBar(
            title: Text('dart_buildInTypes'),
          ),
          body: BuildInTypesLists(),
        );
      },
      dartBuildInTypesMaps: (BuildContext context) {
        return new Scaffold(
          appBar: AppBar(
            title: Text('dart_buildInTypes_maps'),
          ),
          body: BuildInTypesMaps(),
        );
      },
      dartBuildInTypesSets: (BuildContext context) {
        return new Scaffold(
          appBar: AppBar(
            title: Text('dart_buildInTypes_sets'),
          ),
          body: BuildInTypesSets(),
        );
      },
      dartCoreConstructor: (BuildContext context) {
        return new Scaffold(
          appBar: AppBar(
            title: Text('date:core library DateTime'),
          ),
          body: ConstructorDemo1(),
        );
      },
      dartCoreDateTime: (BuildContext context) {
        return new Scaffold(
          appBar: AppBar(
            title: Text('date:core library DateTime'),
          ),
          body: BuildInTypesSets(),
        );
      },
      dartCoreOperator: (BuildContext context) {
        return new Scaffold(
          appBar: AppBar(
            title: Text('date:core library DateTime'),
          ),
          body: OverrideOperator(),
        );
      },
    };
    return route;
  }
}
