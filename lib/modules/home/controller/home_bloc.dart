import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import '../models/todo_dto.dart';

import '../../../_utils/entities/api_response.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<FetchTodos>((event, emit) {
      // TODO: implement event handler
    });

    on<DeleteTodo>((event, emit) {
      // TODO: implement event handler
    });
  }
}
