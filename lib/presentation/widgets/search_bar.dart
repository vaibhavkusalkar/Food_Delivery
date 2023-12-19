import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/presentation/bloc/home_bloc.dart';
import 'package:food_delivery/presentation/pages/search.dart';

class SearchWidget extends SliverPersistentHeaderDelegate {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is !HomeActionState,
      listener: (context, state) {
        if(state is HomeNavigateToSearchPageState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
        }
      },
      builder: (context, state) {
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.only(
              left: 17.0, right: 17.0, top: 15, bottom: 10),
          child: GestureDetector(
            onTap: () {homeBloc.add(HomeSearchBarClickedEvent());},
            child: Container(
              width: 80,
              padding: EdgeInsets.only(
                  top: 11.0, bottom: 10.0, left: 17.0, right: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Theme.of(context).indicatorColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Search, Order, Enjoy, Repeat !",
                    style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontWeight: FontWeight.w100,
                        color: Theme.of(context).hintColor,
                        fontSize: 15,
                        letterSpacing: 0.1),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: Theme.of(context).hintColor,
                      ),
                      Transform.rotate(
                        angle: 1.56,
                        origin: Offset.zero,
                        child: Transform.scale(
                          scaleY: 0.4,
                          scaleX: 1.3,
                          child: Icon(
                            Icons.horizontal_rule_rounded,
                            color: Color.fromRGBO(187, 191, 192, 1.0),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_voice_rounded,
                        color: Theme.of(context).highlightColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  double get maxExtent => 75.0; // Adjust the size of the middle widget

  @override
  double get minExtent => 70.0; // Adjust the size of the middle widget

  @override
  bool shouldRebuild(SearchWidget oldDelegate) {
    return false;
  }
}
