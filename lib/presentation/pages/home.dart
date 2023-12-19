import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/data/models/data_model.dart';
import 'package:food_delivery/presentation/bloc/home_bloc.dart';
import 'package:food_delivery/presentation/pages/account.dart';
import 'package:food_delivery/presentation/pages/location.dart';
import 'package:food_delivery/presentation/widgets/cuisine_card.dart';
import 'package:food_delivery/presentation/widgets/search_bar.dart';

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
      buildWhen: (previous, current) => current is !HomeActionState,
      listener: (context, state) {
        if(state is HomeNavigateToLocationPageState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Location()));
        }
        if(state is HomeNavigateToAccountPageState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Account()));
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 60,
                  backgroundColor: Colors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            homeBloc.add(HomeLocationClickedEvent());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 2.5),
                                    child: Icon(
                                      Icons.location_on_sharp,
                                      color: Theme.of(context).highlightColor,
                                      size: 19,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6.0,right: 3.0),
                                    child: Transform.scale(
                                      scaleX: 1.05,
                                      child: Text(
                                        "Runwal Meadows",
                                        style: TextStyle(
                                          fontFamily: 'CircularStd',
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18,
                                          letterSpacing: -0.3
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.expand_more_rounded,
                                    color: Theme.of(context).hintColor,
                                    size: 18,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.5),
                                child: SizedBox(
                                  width: 280,
                                  child: Text(
                                    "Flat no 14,Building no 3,Mumbai Bangalore Highway,Warje,Pune 411058",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'CircularStd',
                                      fontWeight: FontWeight.w100,
                                      fontSize: 12,
                                      letterSpacing: 0.3,
                                      color: Theme.of(context).hintColor
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.account_circle_rounded,
                            size: 38,
                          ),
                          onPressed: () {
                            homeBloc.add(HomeAccountClickedEvent());
                          },
                        )
                      ],
                    ),
                  ),
                  floating: false,
                  pinned: false,
                  snap: false,
                ),
                SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: SearchWidget(),
                ),
                SliverFillRemaining(
                  child: Column(
                    children: [

                      CuisineCard()

                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

/*
Template with search bar pinned

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.lightBlue,
                        ),
                        Text("Runwal Meadows"),
                        Icon(Icons.expand_more_rounded)
                      ],
                    ),
                    Text(
                      "Flat no 14,Building no 3,Mumbai Bangalore Highway,Warje,Pune 411058",
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.account_circle_rounded),
                    onPressed: () {},
                  )
                ],
                //expandedHeight: 200.0,
                floating: false,
                pinned: false,
                snap: false,
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: SearchWidget(),
              ),
              SliverFillRemaining(
                child: ,
              )
            ],
          ),
        );
      },
    );
  }
}

*/
