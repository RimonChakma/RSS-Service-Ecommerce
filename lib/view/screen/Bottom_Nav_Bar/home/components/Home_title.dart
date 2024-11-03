import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {

  final title;
  const HomeTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,child: Padding(
        padding: const EdgeInsets.only(
          top: 10
        ),
        child: Text(title),
      ),
    );

  
  }
}