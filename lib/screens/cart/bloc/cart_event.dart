part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadMyItemIds extends CartEvent {}

class UpdateMyItemIds extends CartEvent {

}

class LoadItemByIds extends CartEvent {}

class UpdateItemByIds extends CartEvent {}


