import 'dart:async';
import 'package:crud_apps/db_helper/repository.dart';
import 'package:crud_apps/model/User.dart';

class UserService {
  late Repository _repository;
  UserService() {
    _repository = Repository();
  }
//Save User
  SaveUser(User user) async {
    return await _repository.insertData('users', user.userMap());
  }

//Read All Users
  readAllUsers() async {
    return await _repository.readData('users');
  }

//Edit User
  UpdateUser(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

//delete User
  deleteUser(userId) async {
    return await _repository.deleteDataById('users', userId);
  }
}
