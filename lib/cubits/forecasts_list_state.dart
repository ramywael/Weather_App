part of 'forecasts_list_cubit.dart';

@immutable
abstract class ForecastsListState {}

class ForecastsListInitial extends ForecastsListState {}
class ForecastsListLoading extends ForecastsListState {}
class ForecastsListSucceed extends ForecastsListState {
  final List<HomeHourModel> forecastsList;
  ForecastsListSucceed({required this.forecastsList});

}
class ForecastsListFailure extends ForecastsListState {
final String error;
  ForecastsListFailure({ required this.error});
}

