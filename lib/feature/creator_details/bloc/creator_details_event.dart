part of 'creator_details_bloc.dart';

@freezed
class CreatorDetailsEvent with _$CreatorDetailsEvent {
  const factory CreatorDetailsEvent.onPageOpened({required Creator creator}) = _CreatorDetailsOnPageOpenedEvent;
  const factory CreatorDetailsEvent.onSeeAllCreatorComicsTapped({required Creator creator}) =
      _CreatorDetailsOnSeeAllCreatorComicsTappedEvent;
  const factory CreatorDetailsEvent.onSeeAllCreatorSeriesTapped({required Creator creator}) =
      _CreatorDetailsOnSeeAllCreatorSeriesTappedEvent;
  const factory CreatorDetailsEvent.onSeeAllCreatorStoriesTapped({required Creator creator}) =
      _CreatorDetailsOnSeeAllCreatorStoriesTappedEvent;
}
