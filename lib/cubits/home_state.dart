part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
class HomeSucceed extends HomeState {
  final HomeModel? model;
  final List<HomeHourModel> forecastsList;
  HomeSucceed(this.forecastsList, {this.model});
}
class HomeFailure extends HomeState {
  final String error;
  HomeFailure({ required this.error});
}
