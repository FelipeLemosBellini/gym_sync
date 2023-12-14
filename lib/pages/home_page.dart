import 'package:flutter/material.dart';
import 'package:gym_sync/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_sync/view_model/home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc bloc = HomeBloc();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeViewModel>(
        bloc: bloc,
        builder: (context, state) => Scaffold(
                body: Center(
                    child: GestureDetector(
              onTap: () => bloc.goToNewWorkout(context),
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text("dfsdf")),
            ))
                // ListView.builder(itemBuilder: (context, index) {
                //   return Text()
                // }),
                ));
  }
}
