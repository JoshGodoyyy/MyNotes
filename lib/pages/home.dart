import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';
import '../components/custom_bottombar.dart';
import '../components/list_data.dart';
import '../components/list_buttons_container.dart';
import '../components/searchbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [
            CustomAppBar(),
            SarchBar(),
            ListButtonsContainer(),
          ],
        ),
        toolbarHeight: 210.0,
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: const CustomBottomBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView(
            children: const [
              ListData(),
            ],
          ),
        ),
      ),
    );
  }
}
