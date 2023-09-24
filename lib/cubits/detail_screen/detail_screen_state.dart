part of 'detail_screen_cubit.dart';

@immutable
abstract class DetailScreenState {}

class DetailScreenInitial extends DetailScreenState {}
class DetailScreenFailure extends DetailScreenState {
   final String errorMessage;
   DetailScreenFailure({required this.errorMessage});
}
class DetailScreenSucceed extends DetailScreenState {
  final DetailContainerItem model;
  final List<DetailListModel> listModel;
  DetailScreenSucceed({required this.listModel,required this.model});
}
class DetailScreenLoading extends DetailScreenState {

}



