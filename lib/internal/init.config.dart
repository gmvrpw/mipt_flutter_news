// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mipt_flutter_news/data/api/api.dart' as _i5;
import 'package:mipt_flutter_news/data/api/service/favorite.dart' as _i4;
import 'package:mipt_flutter_news/data/api/service/news_api.dart' as _i3;
import 'package:mipt_flutter_news/data/repository/news.dart' as _i7;
import 'package:mipt_flutter_news/domain/repository/news.dart' as _i6;
import 'package:mipt_flutter_news/internal/dependencies.dart' as _i8;

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
    gh.lazySingleton<_i3.NewsApiService>(() => _i3.NewsApiService());
    gh.lazySingleton<_i4.FavoriteNewsApiService>(
        () => _i4.FavoriteNewsApiService());
    gh.lazySingleton<_i5.Api>(() => _i5.Api(
          gh<_i3.NewsApiService>(),
          gh<_i4.FavoriteNewsApiService>(),
        ));
    gh.lazySingleton<_i6.AbstractNewsRepository>(
        () => _i7.NewsRepository(gh<_i5.Api>()));
    gh.lazySingleton<_i8.Dependencies>(
        () => _i8.Dependencies(gh<_i6.AbstractNewsRepository>()));
    return this;
  }
}
