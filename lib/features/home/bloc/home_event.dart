part of 'home_bloc.dart';

sealed class HomeEvent {}

class HomeProductWishlistClickEvent extends HomeEvent {}

class HomeProductCartClickEvent extends HomeEvent {}

class HomeWishlistNavigatorEvent extends HomeEvent {}

class HomeCartNavigatorEvent extends HomeEvent {}
