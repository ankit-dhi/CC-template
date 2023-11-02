// ignore_for_file: must_be_immutable

part of 'meditate_v4_bloc.dart';

/// Represents the state of MeditateV4 in the application.
class MeditateV4State extends Equatable {
  MeditateV4State({this.meditateV4ModelObj});

  MeditateV4Model? meditateV4ModelObj;

  @override
  List<Object?> get props => [
        meditateV4ModelObj,
      ];
  MeditateV4State copyWith({MeditateV4Model? meditateV4ModelObj}) {
    return MeditateV4State(
      meditateV4ModelObj: meditateV4ModelObj ?? this.meditateV4ModelObj,
    );
  }
}
