import 'package:dartz/dartz.dart';
import 'package:todo/_utils/entities/api_response.dart';
import 'package:todo/modules/home/models/todo_dto.dart';

abstract class ITodoRepository {
  APIResponse<Unit> addTodo();
  APIResponse<TodoDTO> updateTodo();
}

class TodoRepositoty implements ITodoRepository {
  @override
  APIResponse<Unit> addTodo() {
    // TODO: implement addTodo
    throw UnimplementedError();
  }

  @override
  APIResponse<TodoDTO> updateTodo() {
    // TODO: implement updateTodo
    throw UnimplementedError();
  }
}
