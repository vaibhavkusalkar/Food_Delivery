part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState{}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {
  final
}

class HomeLoadingErrorState extends HomeState {}

class HomeNavigateToLocationPageState extends HomeActionState {}

class HomeNavigateToAccountPageState extends HomeActionState {}

class HomeNavigateToSearchPageState extends HomeActionState {}