library flutter_padding;

import 'package:flutter/widgets.dart';

extension PaddingExt on Widget {
  /// Padding on all sides
  Widget padAll(double value, {Key? key}) =>
      Padding(key: key, padding: EdgeInsets.all(value), child: this);

  /// Padding only on top
  Widget padTop(double value, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.only(top: value),
    child: this,
  );

  /// Padding only on bottom
  Widget padBottom(double value, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.only(bottom: value),
    child: this,
  );

  /// Padding only on left
  Widget padLeft(double value, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.only(left: value),
    child: this,
  );

  /// Padding only on right
  Widget padRight(double value, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.only(right: value),
    child: this,
  );

  /// Horizontal padding
  Widget padH(double value, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  /// Vertical padding
  Widget padV(double value, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.symmetric(vertical: value),
    child: this,
  );

  /// Horizontal & Vertical padding
  Widget padXY(double x, double y, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.symmetric(horizontal: x, vertical: y),
    child: this,
  );

  /// Padding using LTRB values
  Widget padLTRB(double left, double top, double right, double bottom, {Key? key}) =>
      Padding(
        key: key,
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  /// Padding with named parameters
  Widget padOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
    child: this,
  );
}
