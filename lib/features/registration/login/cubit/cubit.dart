import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../shared/network/remote/dio_helper.dart';
import '../../../../shared/network/remote/end_points.dart';
import 'States.dart';
import 'package:flutter/material.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialStates());

  static LoginCubit? get(context) => BlocProvider.of(context);
  final formKey = GlobalKey<FormState>();

  void userLogin({
    required String? email,
    required String? password,
  }) {
    if (!formKey.currentState!.validate()) {
      return;
    }
    emit(LoginLoadingtState());
    formKey.currentState!.save();
    DioHelper.postdata(url:LOGIN, posteddata: {
      "email": email,
      "password": password,
    }).then((value) {
      // loginModel = UserModel.fromJson(value.data);
      // emit(LoginSuccessState(loginModel));
    }).catchError((error) {
      emit(LoginErrorState(message: error.toString()));
      print(error);
    });
  }
}
