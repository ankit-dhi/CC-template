// ignore_for_file: must_be_immutable

part of 'meditate_v6_bloc.dart';

/// Represents the state of MeditateV6 in the application.
class MeditateV6State extends Equatable {
  MeditateV6State({this.meditateV6ModelObj});

  MeditateV6Model? meditateV6ModelObj;

  @override
  List<Object?> get props => [
        meditateV6ModelObj,
      ];
  MeditateV6State copyWith({MeditateV6Model? meditateV6ModelObj}) {
    return MeditateV6State(
      meditateV6ModelObj: meditateV6ModelObj ?? this.meditateV6ModelObj,
    );
  }
}
