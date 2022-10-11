// import 'package:flutter/material.dart';
//
// class AButton extends StatelessWidget {
//   AButton({Key? key,
//     required this.child, Color? borderColor,
//   bool plain ,
//   double? width;
//   double? height;
//   Color _borderColor;
//   Color? _color;
//   Color? _bgColor;
//   VoidCallback onPressed = () => {};
//   EdgeInsetsGeometry? padding;
//   BorderRadius borderRadius;
//
//     int? width
//
//   }) : super(key: key);
//
//   Widget child;
//   bool plain ;
//   double? width;
//   double? height;
//   Color _borderColor;
//   Color? _color;
//   Color? _bgColor;
//   VoidCallback onPressed = () => {};
//   EdgeInsetsGeometry? padding;
//   BorderRadius borderRadius;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       child: FlatButton(
//         padding: padding == null ? EdgeInsets.all(0) : padding,
//         shape: RoundedRectangleBorder(
//             borderRadius:
//             borderRadius == null ? BorderRadius.circular(4) : borderRadius,
//             side: BorderSide(
//                 width: 1, color: !plain ? Colors.transparent : _borderColor)),
//         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//         child: child,
//         textColor: _color,
//         color: _bgColor,
//         splashColor: onPressed == null ? Colors.transparent : null,
//         highlightColor: onPressed == null ? Colors.transparent : null,
//         disabledColor: _bgColor,
//         onPressed: onPressed == null ? () {} : onPressed,
//       ),
//     );
//   }
// }
