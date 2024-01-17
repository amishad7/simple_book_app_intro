import 'package:flutter/material.dart';
import 'package:untitled6/app/utils/components/tabs/home.dart';
import 'package:untitled6/app/utils/components/tabs/sec_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            first_home(),
            sec_home(),
          ],
        ),
      ),
    );
  }
}
