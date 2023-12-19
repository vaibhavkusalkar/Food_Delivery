import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeLocationClickedEvent>(homeLocationClickedEvent);
    on<HomeAccountClickedEvent>(homeAccountClickedEvent);
    on<HomeSearchBarClickedEvent>(homeSearchBarClickedEvent);
  }

  FutureOr<void> homeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) {
    emit(HomeLoadingState());
  }

  FutureOr<void> homeLocationClickedEvent(HomeLocationClickedEvent event, Emitter<HomeState> emit) {
    print("Location Clicked");
    emit(HomeNavigateToLocationPageState());
  }

  FutureOr<void> homeAccountClickedEvent(HomeAccountClickedEvent event, Emitter<HomeState> emit) {
    print("Account Clicked");
    emit(HomeNavigateToAccountPageState());
  }

  FutureOr<void> homeSearchBarClickedEvent(HomeSearchBarClickedEvent event, Emitter<HomeState> emit) {
    print("Search Clicked");
    emit(HomeNavigateToSearchPageState());
  }

}
