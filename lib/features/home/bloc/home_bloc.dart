import 'dart:async';

import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeWishlistNavigatorEvent>(homeWishlistNavigatorEvent);
    on<HomeCartNavigatorEvent>(homeCartNavigatorEvent);
  }

  FutureOr<void> homeWishlistNavigatorEvent(
      HomeWishlistNavigatorEvent event, Emitter<HomeState> emit) {
    print("WishList Navigator Cliked");
    emit(HomeNavigateToWishlistPageAction());
  }

  FutureOr<void> homeCartNavigatorEvent(
      HomeCartNavigatorEvent event, Emitter<HomeState> emit) {
    print("Cart Navigator Cliked");
    emit(HomeNavigateToCartPageAction());
  }
}
