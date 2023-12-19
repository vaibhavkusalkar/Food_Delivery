part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent{}

class HomeLocationClickedEvent extends HomeEvent {}

class HomeAccountClickedEvent extends HomeEvent {}

class HomeSearchBarClickedEvent extends HomeEvent {}

class HomeSearchBarVoiceClickedEvent extends HomeEvent {}