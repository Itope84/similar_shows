import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  Widget child;

  BaseLayout({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: child,
    );
  }
}
