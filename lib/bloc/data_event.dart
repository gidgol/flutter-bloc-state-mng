part of 'data_bloc.dart';

@immutable
abstract class DataEvent {
  const DataEvent();
}

class DataChangedEvent extends DataEvent {
  final String name;

  const DataChangedEvent({this.name});
}
