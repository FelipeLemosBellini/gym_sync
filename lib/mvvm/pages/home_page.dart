import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gym_sync/mvvm/bloc/home_bloc.dart';
import 'package:gym_sync/mvvm/view_model/home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc bloc = GetIt.I.get<HomeBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    bloc.close();
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
                        decoration:
                            const BoxDecoration(color: Colors.red, borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Text("On tap test analytics"))))
            // ListView.builder(itemBuilder: (context, index) {
            //   return Text()
            // }),
            ));
  }
}
