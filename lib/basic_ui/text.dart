import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '第一个文本 1 第一个文本 1 第一个文本 1 第一个文本2',
              style: TextStyle(
                fontSize: 45,
                // color: Colors.white,
                // backgroundColor: Colors.green,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.pink,

                background: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3
                  ..color = Colors.blue,

                letterSpacing: 2,
                wordSpacing: 20,
                leadingDistribution: TextLeadingDistribution.proportional,
                shadows: const [
                  Shadow(
                      offset: Offset(10, 10),
                      blurRadius: 2.0,
                      color: Colors.blue)
                ],
                debugLabel: "Debug---",
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
                decorationThickness: 3,
              ),
            ),
            Container(
              height: 100,
              // width: ,
              color: Colors.transparent,
            ),
            RichText(
              text: TextSpan(
                  text: "这行是富文本",
                  style: const TextStyle(fontSize: 20),
                  children: [
                    TextSpan(
                      text: "富文本2",
                      style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.pink,
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
