import 'package:flutter/material.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    Key? key,
    required this.body,
    this.bottom,
  }) : super(key: key);

  final Widget body;
  final Widget? bottom;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter GetX Playground'),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: widget.body,
        bottomNavigationBar: widget.bottom,
      ),
    );
  }
}
