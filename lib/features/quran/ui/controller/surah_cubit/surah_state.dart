part of 'surah_cubit.dart';

sealed class SurahState extends Equatable {
  const SurahState();

  @override
  List<Object> get props => [];
}

final class SurahInitial extends SurahState {}

final class SurahLoading extends SurahState {}

final class SurahLoaded extends SurahState {
  final List<QuranModel> surahs;

  const SurahLoaded(this.surahs);

  @override
  List<Object> get props => [surahs];
}

final class SurahError extends SurahState {
  final String message;

  const SurahError(this.message);

  @override
  List<Object> get props => [message];
}
