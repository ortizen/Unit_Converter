import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:unit_converter_app/unit.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units.
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.
class ConverterScreen extends StatelessWidget {
  /// Units for this [Category].
  final String name;
  final Color color;
  final List<Unit> units;

  /// This [ConverterRoute] requires the name, color, and units to not be null.
  // TODO: Pass in the [Category]'s name and color
  const ConverterScreen({
    @required this.name,
    @required this.color,
    @required this.units,
  })  : assert(units != null),
        assert(color != null),
        assert(name != null);

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = units.map((Unit unit) {
      return Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}
