import 'package:lesson_54/models/user_model.dart';

import '../services/auth_http_sevices.dart';

class UserViewModels{
  User? user;
  final authHttpServices = AuthHttpServices();
  Future<void> register(String email,String password) async{
    await authHttpServices.register(email,password);

  }
}