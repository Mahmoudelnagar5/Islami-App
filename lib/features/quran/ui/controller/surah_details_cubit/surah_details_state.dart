part of 'surah_details_cubit.dart';

sealed class SurahDetailsState extends Equatable {
  const SurahDetailsState();

  @override
  List<Object> get props => [];
}

final class SurahDetailsInitial extends SurahDetailsState {}

final class SurahDetailsLoading extends SurahDetailsState {}

final class SurahDetailsLoaded extends SurahDetailsState {
  final SurahDetailsModel surahDetailsModel;
  const SurahDetailsLoaded(this.surahDetailsModel);
}

final class SurahDetailsError extends SurahDetailsState {
  final String errMessage;
  const SurahDetailsError(this.errMessage);
}
