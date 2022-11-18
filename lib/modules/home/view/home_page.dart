import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:todo/_utils/constants/routes.dart';
import 'package:todo/modules/home/view/widgets/todo_card.dart';

import '../controller/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const HomePageUI(),
    );
  }
}

class HomePageUI extends StatelessWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todos")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RouteNames.addEditTodoPage);
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isFetching) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.todos.isEmpty) {
              return const Center(
                child: Text("No todos added yet."),
              );
            } else {
              return ListView.builder(
                itemCount: state.todos.length,
                itemBuilder: (context, index) {
                  return TodoCard(
                    todoDTO: state.todos[index],
                    isProgressing: state.todos[index].id == state.deletingId,
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
