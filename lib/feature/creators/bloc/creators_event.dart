part of 'creators_bloc.dart';

@freezed
class CreatorsEvent with _$CreatorsEvent {
  const factory CreatorsEvent.onPageOpened({required ApiFilter? filter}) = _CreatorsOnPageOpenedEvent;
  const factory CreatorsEvent.onMoreDataLoading({required ApiFilter? filter}) = _CreatorsMoreDataLoadingEvent;
  const factory CreatorsEvent.onCreatorTapped({required Creator creator}) = _CreatorsOnCreatorTappedEvent;
}
