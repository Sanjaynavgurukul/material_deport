import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:material_depo/db/repository.dart';
import 'package:material_depo/model/product.dart';
import 'package:meta/meta.dart';

part 'landing_event.dart';

part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  final Repository _repository = Repository();

  LandingBloc() : super(LandingInitial()) {
    on<LandingEvent>((event, emit) {
      // TODO: implement event handler
      if (event is FetchProduct) {
        _repository.products().listen(
              (products) => add(
                UpdateProduct(data: sortedData(products)),
              ),
            );
      }
      if (event is UpdateProduct) {
        emit(ProductLoaded(data: event.data));
      }
    });
  }

  List<Products> sortedData(QuerySnapshot product) {
    final List<Products> data = [];
    for (var element in product.docs) {
      Products p = Products();
      p.categoryLabel = element['productName'];
      data.add(p);
    }
    return data;
  }
}
