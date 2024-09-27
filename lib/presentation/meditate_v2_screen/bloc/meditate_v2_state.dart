// ignore_for_file: must_be_immutable

part of 'meditate_v2_bloc.dart';

/// Represents the state of MeditateV2 in the application.
class MeditateV2State extends Equatable {
  MeditateV2State({this.meditateV2ModelObj});

  MeditateV2Model? meditateV2ModelObj;

  @override
  List<Object?> get props => [
        meditateV2ModelObj,
      ];
  MeditateV2State copyWith({MeditateV2Model? meditateV2ModelObj}) {
    return MeditateV2State(
      meditateV2ModelObj: meditateV2ModelObj ?? this.meditateV2ModelObj,
    );
  }
}
