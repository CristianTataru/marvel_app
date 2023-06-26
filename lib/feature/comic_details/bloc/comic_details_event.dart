part of 'comic_details_bloc.dart';

@freezed
class ComicDetailsEvent with _$ComicDetailsEvent {
  const factory ComicDetailsEvent.onPageOpened({required Comic comic}) = _ComicDetailsOnPageOpenedEvent;
}
