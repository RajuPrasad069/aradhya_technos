import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class MyButton extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Color? textColor;
  final Color? bgColor;
  final bool loading ;

  const MyButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.loading = false ,
    this.style,
    this.width,
    this.height,
    this.padding,
    this.textColor,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width*0.56 ?? 295,
      height: Get.height*0.07 ?? 56,
      child: ElevatedButton(
        onPressed: onTap,
        child: Center(child: loading==false? Text(title): LoadingAnimationWidget.inkDrop(
          color: Colors.blue,
          size: 30,
        )),
        style: ElevatedButton.styleFrom(
            foregroundColor: textColor ??
                Theme.of(context).buttonTheme.colorScheme?.onSecondary,
            backgroundColor: bgColor, shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(32.0),
              ),
            ),
            alignment: Alignment.center,
            textStyle: style ??
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
    );
  }
}
