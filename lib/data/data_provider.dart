import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theta_camera/models/user_model.dart';
import 'package:theta_camera/services/service.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async{
  return ref.watch(userProvider).getUser();
});