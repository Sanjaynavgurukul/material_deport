part of 'landing_bloc.dart';

@immutable
abstract class LandingState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LandingInitial extends LandingState {
}

class ProductLoaded extends LandingState {
  List<Products> data = [];

  ProductLoaded({required this.data});

  @override
  // TODO: implement props
  List<Object?> get props => [data];
}
