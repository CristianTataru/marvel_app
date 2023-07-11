// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:marvel_app/di/app_module.dart' as _i18;
import 'package:marvel_app/domain/api/marvel_api.dart' as _i5;
import 'package:marvel_app/domain/repository/marvel_repository.dart' as _i6;
import 'package:marvel_app/feature/character_details/bloc/character_details_bloc.dart'
    as _i11;
import 'package:marvel_app/feature/characters/bloc/characters_bloc.dart'
    as _i12;
import 'package:marvel_app/feature/comic_details/bloc/comic_details_bloc.dart'
    as _i13;
import 'package:marvel_app/feature/comics/bloc/comics_bloc.dart' as _i14;
import 'package:marvel_app/feature/creator_details/bloc/creator_details_bloc.dart'
    as _i15;
import 'package:marvel_app/feature/creators/bloc/creators_bloc.dart' as _i16;
import 'package:marvel_app/feature/home/bloc/home_bloc.dart' as _i17;
import 'package:marvel_app/feature/series/bloc/series_bloc.dart' as _i7;
import 'package:marvel_app/feature/series_details/bloc/series_details_bloc.dart'
    as _i8;
import 'package:marvel_app/feature/stories/bloc/stories_bloc.dart' as _i9;
import 'package:marvel_app/feature/story_details/bloc/story_details_bloc.dart'
    as _i10;
import 'package:marvel_app/routes/router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Dio>(() => appModule.dio());
    gh.factory<_i5.MarvelApi>(() => _i5.MarvelApi(gh<_i4.Dio>()));
    gh.singleton<_i6.MarvelRepository>(
        _i6.MarvelRepository(gh<_i5.MarvelApi>()));
    gh.factory<_i7.SeriesBloc>(() => _i7.SeriesBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i8.SeriesDetailsBloc>(() => _i8.SeriesDetailsBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i9.StoriesBloc>(() => _i9.StoriesBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i10.StoryDetailsBloc>(() => _i10.StoryDetailsBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i11.CharacterDetailsBloc>(() => _i11.CharacterDetailsBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i12.CharactersBloc>(() => _i12.CharactersBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i13.ComicDetailsBloc>(() => _i13.ComicDetailsBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i14.ComicsBloc>(() => _i14.ComicsBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i15.CreatorDetailsBloc>(() => _i15.CreatorDetailsBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i16.CreatorsBloc>(() => _i16.CreatorsBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i17.HomeBloc>(() => _i17.HomeBloc(
          gh<_i6.MarvelRepository>(),
          gh<_i3.AppRouter>(),
        ));
    return this;
  }
}

class _$AppModule extends _i18.AppModule {}
