part of 'mycubit_cubit.dart';

@immutable
abstract class MayLoveState {}

class MayLoveInitial extends MayLoveState {}

class MayLoveLoaded extends MayLoveState{

late final List<MayLove> mayLove;

MayLoveLoaded(this.mayLove);
}



