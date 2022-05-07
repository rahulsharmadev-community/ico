import 'package:flutter/material.dart';
import 'package:ico/src/const/icog_const.dart' show icogExotic;

class IcoG extends StatelessWidget {
  final IconData iconData;

  /// 😊 You can utilise the icog gradient library for immediate assistance.
  ///
  /// 👉 eg. colors: icogObamasResignation\
  /// 👉 eg. colors: icogGlobalWarming\
  /// 👉 eg. colors: icogCaseyBrokenCamera

  final List<Color> colors;
  final double? size;
  final List<Shadow>? shadows;
  const IcoG(this.iconData,
      {Key? key, this.size, this.colors = icogExotic, this.shadows})
      : super(key: key);
  @override
  Widget build(BuildContext context) => ShaderMask(
        shaderCallback: ((bounds) => LinearGradient(
                colors: colors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.decal)
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
