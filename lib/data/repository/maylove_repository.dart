import 'package:mindtask/data/models/maylove.dart';
import 'package:mindtask/data/web_services/maylove_web_services.dart';

class MayLoveRepository{

  final MayLovewebservices mayLoveWebServices;

  MayLoveRepository(this.mayLoveWebServices);

  Future<List<MayLove>> getAllCharacters() async {
    final maylove = await MayLovewebservices.getMayLove();
    return maylove.map((maylove) => MayLove.fromJson(maylove)).toList();
  }

  static getMayLove() {}








}