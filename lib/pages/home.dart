import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';
import '../components/custom_bottombar.dart';
import '../components/list_data.dart';
import '../components/searchbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: const [
              CustomAppBar(),
              SarchBar(),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Notas',
              ),
              Tab(
                text: 'Tarefas',
              )
            ],
          ),
          toolbarHeight: 210.0,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 5,
        ),
        bottomNavigationBar: const CustomBottomBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TabBarView(
              children: [
                ListView(
                  children: const [
                    ListData(),
                  ],
                ),
                Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
