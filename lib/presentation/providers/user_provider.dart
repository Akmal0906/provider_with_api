import 'package:flutter/cupertino.dart';
import 'package:provider_with_api/data/remote/fetch_current_user_data.dart';
import 'package:provider_with_api/domain/models/user_model.dart';

class UserProvider extends ChangeNotifier {

  FetchUser fetchUser = FetchUser();
  UserModel _userModel = UserModel();

  UserModel get userModel => _userModel;

  Future getCurrentUser() async {

    _userModel = (await fetchUser.getAll())!;
    notifyListeners();
  }
}
