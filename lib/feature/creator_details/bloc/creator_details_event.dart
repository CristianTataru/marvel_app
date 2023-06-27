part of 'creator_details_bloc.dart';

@freezed
class CreatorDetailsEvent with _$CreatorDetailsEvent {
  const factory CreatorDetailsEvent.onPageOpened({required Creator creator}) = _CreatorDetailsOnPageOpenedEvent;
}
