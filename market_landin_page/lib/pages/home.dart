import 'package:flutter/material.dart';
import 'package:market_landin_page/sessions/hero_session.dart';

import '../sessions/contact_session.dart';
import '../sessions/details_session.dart';

class HomePage extends StatefulWidget {

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  final keySession1 = GlobalKey();
  final keySession2 = GlobalKey();
  final keySession3 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              _onMenuClick(1);
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              _onMenuClick(2);
            },
          ),
          IconButton(
            icon: Icon(Icons.mail_rounded),
            onPressed: () {
              _onMenuClick(3);
            },
          ),
        ],
      ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              HeroSession( key: keySession1),
              DetailsSession( key: keySession2),
              ContactSession( key: keySession3),
            ],
          ),
        )
    );
  }

  _onMenuClick(int value) {
    final context;
    switch (value) {
      case 1:
        context = keySession1.currentContext;
        break;
      case 2:
        context = keySession2.currentContext;
        break;
      case 3:
        context = keySession3.currentContext;
        break;
      default:
        throw Exception('Invalid value');
    }

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

}
