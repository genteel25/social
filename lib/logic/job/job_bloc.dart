import 'package:fpdart/fpdart.dart';
import 'package:social/logic/job/job_event.dart';
import 'package:social/logic/job/job_state.dart';
import 'package:social/util/util.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  JobBloc() : super(JobInitial()) {
    on<GetAllJobs>((event, emit) => getAllJobs(event, emit));
  }

  getAllJobs(event, emit) async {
    emit(JobLoading());
    var data = await repository.getAllJobs();

    data.fold((l) => emit(JobFailure(error: l.toString())),
        (r) => emit(JobSuccess(response: r)));
  }
}
