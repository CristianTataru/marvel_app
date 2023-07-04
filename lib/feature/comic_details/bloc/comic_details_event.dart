part of 'comic_details_bloc.dart';

@freezed
class ComicDetailsEvent with _$ComicDetailsEvent {
  const factory ComicDetailsEvent.onPageOpened({required Comic comic}) = _ComicDetailsOnPageOpenedEvent;
  const factory ComicDetailsEvent.onSeeAllComicCharactersTapped({required Comic comic}) =
      _ComicDetailsOnSeeAllComicCharactersTappedEvent;
  const factory ComicDetailsEvent.onSeeAllComicStoriesTapped({required Comic comic}) =
      _ComicDetailsOnSeeAllComicStoriesTappedEvent;
  const factory ComicDetailsEvent.onSeeAllComicCreatorsTapped({required Comic comic}) =
      _ComicDetailsOnSeeAllComicCreatorsTappedEvent;
}
