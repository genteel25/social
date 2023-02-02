import 'package:social/model/job.dart';
import 'package:social/util/package_export.dart';

class JobState extends Equatable {
  @override
  List<Object> get props => [];
}

class JobInitial extends JobState {
  @override
  List<Object> get props => [];
}

class JobLoading extends JobState {
  @override
  List<Object> get props => [];
}

class JobSuccess extends JobState {
  final List<JobResponse> response;
  JobSuccess({required this.response});
  @override
  List<Object> get props => [response];
}

class JobFailure extends JobState {
  final String error;
  JobFailure({required this.error});
  @override
  List<Object> get props => [error];
}
