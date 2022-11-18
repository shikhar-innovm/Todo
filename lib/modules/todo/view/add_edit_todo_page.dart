import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:todo/modules/home/controller/home_bloc.dart';

class AddEditTodo extends StatelessWidget {
  const AddEditTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = Get.arguments;
    print(result.toString());
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: AddEditTodoUI(),
    );
  }
}

class AddEditTodoUI extends StatelessWidget {
  const AddEditTodoUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
