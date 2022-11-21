part of 'todo_bloc.dart';

abstract class TodoEvent {}

class AddTodo extends TodoEvent {}

class UpdateTodo extends TodoEvent {
  final String id;

  UpdateTodo(this.id);
}
