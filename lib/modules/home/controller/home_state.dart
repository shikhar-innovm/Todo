part of 'home_bloc.dart';

class HomeState {
  final List<TodoDTO> todos;
  final bool isFetching;
  final String deletingId;
  final Option<Either<Failure, Unit>>? result;

  HomeState(
    this.todos,
    this.isFetching,
    this.deletingId,
    this.result,
  );

  HomeState.initial()
      : todos = [],
        isFetching = false,
        deletingId = "",
        result = none();

  HomeState copyWith({
    List<TodoDTO>? todos,
    bool? isFetching,
    String? deletingId,
    Option<Either<Failure, Unit>>? result,
  }) {
    return HomeState(
      todos ?? this.todos,
      isFetching ?? this.isFetching,
      deletingId ?? this.deletingId,
      result ?? this.result,
    );
  }
}
