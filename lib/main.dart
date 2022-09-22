import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page';

void main() {
  runApp(campus());
}

class campus extends StatelessWidget {
  const campus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
