part of 'google_auth_cubit.dart';

@immutable
abstract class GoogleAuthState {}

class GoogleAuthInitial extends GoogleAuthState {}

class GoogleAuthSucceeded extends GoogleAuthState {}
class GoogleAuthFailed extends GoogleAuthState {}
