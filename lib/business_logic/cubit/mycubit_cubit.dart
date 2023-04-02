import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mindtask/data/models/maylove.dart';
import '../../data/repository/maylove_repository.dart';
part 'mycubit_state.dart';

class MayLoveCubit extends Cubit<MayLoveState> {

  final MayLoveRepository mayLoveRepository ;
  List<MayLove> mayLove = [];

  MayLoveCubit(super.initialState, this.mayLoveRepository);

  List<MayLove> maylove(){
   MayLoveRepository.getMayLove().then((mayLove){
     emit(MayLoveLoaded(mayLove));
     this.mayLove = mayLove ;

   });

  }

  MayLoveCubit(this.mayLoveRepository, this.mayLove);
}
