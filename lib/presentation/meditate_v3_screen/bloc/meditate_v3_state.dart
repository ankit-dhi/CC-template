// ignore_for_file: must_be_immutable

part of 'meditate_v3_bloc.dart';

/// Represents the state of MeditateV3 in the application.
class MeditateV3State extends Equatable {
  MeditateV3State({this.meditateV3ModelObj});

  MeditateV3Model? meditateV3ModelObj;

  @override
  List<Object?> get props => [
        meditateV3ModelObj,
      ];
  MeditateV3State copyWith({MeditateV3Model? meditateV3ModelObj}) {
    return MeditateV3State(
      meditateV3ModelObj: meditateV3ModelObj ?? this.meditateV3ModelObj,
    );
  }
}
