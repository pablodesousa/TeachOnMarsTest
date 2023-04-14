import 'package:equatable/equatable.dart';
import 'package:test_tom/app/model/data.dart';

abstract class DataState extends Equatable {}

class InitialState extends DataState {
  @override
  List<Object> get props => [];
}

class LoadingState extends DataState {
  @override
  List<Object> get props => [];
}

class LoadedState extends DataState {
  LoadedState(this.data);

  final Iterable<TeachOnMarsData> data;

  @override
  List<Object> get props => [data];
}

class ErrorState extends DataState {
  @override
  List<Object> get props => [];
}
