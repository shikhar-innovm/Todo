part of 'todo_bloc.dart';

class TodoState {
  final TodoDTO currentTodo;
  final bool isProgressing;
  final Option<Either<Failure, Unit>> result;

  TodoState(
    this.currentTodo,
    this.isProgressing,
    this.result,
  );

  TodoState.initial()
      : currentTodo = TodoDTO.fromMap({}),
        isProgressing = false,
        result = none();

  TodoState copyWith({
    TodoDTO? currentTodo,
    bool? isProgressing,
    Option<Either<Failure, Unit>>? result,
  }) {
    return TodoState(
      currentTodo ?? this.currentTodo,
      isProgressing ?? this.isProgressing,
      result ?? this.result,
    );
  }
}
