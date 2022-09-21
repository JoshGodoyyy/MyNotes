import 'package:flutter/material.dart';
import 'package:mynotes/pages/todos.dart';

import '../components/custom_appbar.dart';
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
          bottom: const TabBar(
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
        body: const SafeArea(
          child: TabBarView(
            children: [
              ListData(),
              Todos(),
            ],
          ),
        ),
      ),
    );
  }
}
