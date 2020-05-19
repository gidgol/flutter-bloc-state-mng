import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  @override
  DataState get initialState => DataInitialState("Elon Musk");

  @override
  Stream<DataState> mapEventToState(
    DataEvent event,
  ) async* {
    if (event is DataChangedEvent) {
      yield* _mapDataChangedToState(event);
    }
  }

  Stream<DataState> _mapDataChangedToState(DataChangedEvent event) async* {
    yield DataChangedState(event.name);
  }
}
