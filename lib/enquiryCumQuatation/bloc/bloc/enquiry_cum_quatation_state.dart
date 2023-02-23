// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'enquiry_cum_quatation_bloc.dart';

class EnquiryCumQuatationState extends Equatable {
  EnquiryCumQuatation? enquiryCumQuatation;
  EnquiryCumQuatationState({
    this.enquiryCumQuatation,
  });
  @override
  List get props => [enquiryCumQuatation];

  EnquiryCumQuatationState copyWith({
    EnquiryCumQuatation? enquiryCumQuatation,
  }) {
    return EnquiryCumQuatationState(
      enquiryCumQuatation: enquiryCumQuatation ?? this.enquiryCumQuatation,
    );
  }
}


