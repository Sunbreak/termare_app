import 'package:flutter/material.dart';

class PopButton extends StatelessWidget {
  /// 路由栈使用的时候会有些问题
  const PopButton({Key key, this.navigatorContext}) : super(key: key);
  final BuildContext navigatorContext;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        height: 36,
        width: 36,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context ?? navigatorContext);
          },
        ),
      ),
    );
  }
}
