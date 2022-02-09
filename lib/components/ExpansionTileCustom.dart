import 'package:flutter/material.dart';

class ExpansionTileCustom extends StatefulWidget {
  final String title;
  final String content;

  const ExpansionTileCustom({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  _ExpansionTileCustomState createState() => _ExpansionTileCustomState();
}

class _ExpansionTileCustomState extends State<ExpansionTileCustom> {
  bool isExpanded = false;
  var duration = const Duration(seconds: 1);
  double turns = 0.0;

  void _changeRotation() {
    setState(() => isExpanded ? turns += 0.5 : turns -= 0.5);
  }

  void _expandText() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.title;
    final content = widget.content;
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.grey.shade300,
        ),
      )),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            onTap: () {
              _expandText();
              _changeRotation();
            },
            trailing: AnimatedRotation(
              turns: turns,
              duration: duration,
              curve: Curves.fastLinearToSlowEaseIn,
              child: Icon(
                Icons.expand_more,
                color: isExpanded ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          AnimatedAlign(
            curve: Curves.ease,
            duration: duration,
            alignment: Alignment.center,
            heightFactor: isExpanded ? 1 : 0,
            child: AnimatedCrossFade(
              firstCurve: Curves.fastLinearToSlowEaseIn,
              crossFadeState: isExpanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: duration,
              firstChild: Text(
                content,
                textAlign: TextAlign.justify,
              ),
              secondChild: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
