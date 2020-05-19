part of 'data_bloc.dart';

@immutable
abstract class DataState {
  final String name;

  const DataState({this.name});
}

class DataInitialState extends DataState {
  const DataInitialState(String name) : super(name: name);
}

class DataChangedState extends DataState {
  const DataChangedState(String name) : super(name: name);
}
