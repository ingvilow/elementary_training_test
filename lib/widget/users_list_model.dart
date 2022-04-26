import 'package:elementary/elementary.dart';

import '../model/Users.dart';
import '../service/users_service.dart';

class UsersListModel extends ElementaryModel {
  final ApiService? _apiService;

  UsersListModel(this._apiService);

  Future<List<Users>?> getUser() async {
    return _apiService?.fetchHero();
  }
}
