import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_with_api/domain/models/user_model.dart';
class FetchUser{

  Future<UserModel?> getAll()async{
     const String url='https://balldontlie.io/api/v1/players/237';
     Uri uri=Uri.parse(url);
    var response=await http.get(uri,);
   if(response.statusCode==200){
     final json=jsonDecode(response.body);
     final userModel=UserModel.fromJson(json);
     return userModel;
   }
   return null;
  }
}