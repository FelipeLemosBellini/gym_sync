import 'package:flutter/material.dart';
import 'package:gym_sync/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
        builder: (context, viewModel, child) => Scaffold(
              body: ListView.builder(itemBuilder: (context, index) {
                return Text()
              }),
            ));
  }
}
