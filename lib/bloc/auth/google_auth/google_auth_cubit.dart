import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled8/services/shared_prefrences/user_shared_prefrences.dart';
import 'package:untitled8/services/dio_helper/dio_helper.dart';
import 'package:untitled8/models/auth/google_auth/google_auth.dart';
part 'google_auth_state.dart';

class GoogleAuthCubit extends Cubit<GoogleAuthState> {
  GoogleAuthCubit() : super(GoogleAuthInitial());
  static GoogleAuthCubit get(context)=> BlocProvider.of(context);

  SharedPreferences? prefs=UserSharedPreferences.prefs;
  AuthModel? userModel;

  Future signinWithGoogle(GoogleSignInAccount user)async{
    DioHelper.postData(
        url: "api/v1/auth/google/",
        data: {
          "id": user.id,
          "email": user.email,
          "firstName": user.displayName!.split(" ")[0],
          "lastName": user.displayName!.split(" ")[1],
          "picture": user.photoUrl
        },
    ).then((value) {
      print(value);
        userModel= AuthModel.fromJson(value.data);
        User? userInfo = userModel?.data?.user;
        UserSharedPreferences.setFirstName(userInfo!.firstName);
        UserSharedPreferences.setLastName(userInfo.lastName);
        UserSharedPreferences.setEmail(userInfo.email);
        UserSharedPreferences.getEmail();
        UserSharedPreferences.setId(userInfo.userId);
        UserSharedPreferences.setImageURL(userInfo.imageUrl);
        UserSharedPreferences.setAccessToken(userModel!.data!.accessToken);
        emit(GoogleAuthSucceeded());
    });
    emit(GoogleAuthFailed());



  }

}
