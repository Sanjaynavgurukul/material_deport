part of 'landing_bloc.dart';

@immutable
abstract class LandingEvent extends Equatable {
  const LandingEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FetchProduct extends LandingEvent{}

class UpdateProduct extends LandingEvent {
  List<Products> data = [];

  UpdateProduct({required this.data});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
