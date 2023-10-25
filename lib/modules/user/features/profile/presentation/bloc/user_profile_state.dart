import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seattle_elite_towncar/features/auth/domain/entities/client_profile.dart';

part 'user_profile_state.freezed.dart';

abstract class UserProfileState{}

class UserProfileInitial extends UserProfileState {}


@freezed
class FetchedUserProfileState extends UserProfileState with _$FetchedUserProfileState {
  factory FetchedUserProfileState({
    required ClientProfile profile,
  }) = _FetchedUserProfileState;
}
