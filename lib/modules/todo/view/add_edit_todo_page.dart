import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../../_utils/ui_components/widget_extensions.dart';
import '../../home/controller/home_bloc.dart';

class AddEditTodo extends StatelessWidget {
  const AddEditTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = Get.arguments;
    result.toString().logIt;
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const AddEditTodoUI(),
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
