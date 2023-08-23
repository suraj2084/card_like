import 'package:card_like/features/cart/ui/cart.dart';
import 'package:card_like/features/home/bloc/home_bloc.dart';
import 'package:card_like/features/wishlist/ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageAction) {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => const Cart())));
        } else if (state is HomeNavigateToWishlistPageAction) {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const WishList())));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("Grocery App"),
            actions: [
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeWishlistNavigatorEvent());
                  },
                  icon: const Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeCartNavigatorEvent());
                  },
                  icon: const Icon(Icons.shopping_bag_outlined))
            ],
          ),
        );
      },
    );
  }
}
