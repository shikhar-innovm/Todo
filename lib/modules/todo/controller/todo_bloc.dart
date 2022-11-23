import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../_utils/entities/api_response.dart';
import '../../home/models/todo_dto.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState.initial()) {
    on<TodoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
