part of 'home_bloc.dart';

sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

final class HomeInitial extends HomeState {}

class HomeProductLoading extends HomeState {}

class HomeProductSuccess extends HomeState {}

class HomeProductError extends HomeState {}

class HomeNavigateToWishlistPageAction extends HomeActionState {}

class HomeNavigateToCartPageAction extends HomeActionState {}
