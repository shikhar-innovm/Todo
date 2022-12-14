import 'package:dartz/dartz.dart';
import '../../../_utils/entities/api_response.dart';
import '../models/todo_dto.dart';

abstract class IHomeRepository {
  APIResponse<List<TodoDTO>> fetchTodos();
  APIResponse<Unit> deleteTodo(String id);
}

class HomeRepo implements IHomeRepository {
  @override
  APIResponse<List<TodoDTO>> fetchTodos() {
    // TODO: implement fetchTodos
    throw UnimplementedError();
  }

  @override
  APIResponse<Unit> deleteTodo(String id) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }
}
