import 'package:flutter/material.dart';
import 'package:ico/src/const/icog_const.dart' show icogExotic;

/// While using gradient parameter colors, begin and end does not work any more.
class IcoG extends StatelessWidget {
  final IconData iconData;

  /// 😊 You can utilise the icog gradient library for immediate assistance.
  ///
  /// 👉 eg. colors: icogObamasResignation\
  /// 👉 eg. colors: icogGlobalWarming\
  /// 👉 eg. colors: icogCaseyBrokenCamera
  final List<Color> colors;

  /// Creates a custom gradient. By useing LinearGradient, RadialGradient, SweepGradient
  final Gradient? gradient;
  final double? size;
  final List<Shadow>? shadows;
  final AlignmentGeometry? begin;
  final AlignmentGeometry? end;
  const IcoG(this.iconData,
      {Key? key,
      this.size,
      this.begin,
      this.end,
      this.gradient,
      this.colors = icogExotic,
      this.shadows})
      : super(key: key);
  @override
  Widget build(BuildContext context) => ShaderMask(
        shaderCallback: ((bounds) => (gradient ??
                LinearGradient(
                    colors: colors,
                    begin: begin ?? Alignment.topCenter,
                    end: end ?? Alignment.bottomCenter))
            .createShader(Offset.zero & bounds.size)),
        child: Text(String.fromCharCode(iconData.codePoint),
            style: TextStyle(
                inherit: false,
                fontSize: size ?? IconTheme.of(context).size,
                fontFamily: iconData.fontFamily,
                package: iconData.fontPackage,
                color: Colors.white,
                shadows: shadows)),
      );
}
