part of 'creators_bloc.dart';

@freezed
class CreatorsEvent with _$CreatorsEvent {
  const factory CreatorsEvent.onPageOpened() = _CreatorsOnPageOpenedEvent;
  const factory CreatorsEvent.onMoreDataLoading() = _CreatorsMoreDataLoadingEvent;
  const factory CreatorsEvent.onCreatorTapped({required Creator creator}) = _CreatorsOnCreatorTappedEvent;
}
