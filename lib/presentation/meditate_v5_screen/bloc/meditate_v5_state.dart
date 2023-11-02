// ignore_for_file: must_be_immutable

part of 'meditate_v5_bloc.dart';

/// Represents the state of MeditateV5 in the application.
class MeditateV5State extends Equatable {
  MeditateV5State({this.meditateV5ModelObj});

  MeditateV5Model? meditateV5ModelObj;

  @override
  List<Object?> get props => [
        meditateV5ModelObj,
      ];
  MeditateV5State copyWith({MeditateV5Model? meditateV5ModelObj}) {
    return MeditateV5State(
      meditateV5ModelObj: meditateV5ModelObj ?? this.meditateV5ModelObj,
    );
  }
}
