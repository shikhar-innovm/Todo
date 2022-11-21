import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/_utils/entities/api_response.dart';
import 'package:todo/modules/home/models/todo_dto.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState.initial()) {
    on<TodoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
