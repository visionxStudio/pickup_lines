import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pickup_lines/services/storage/shared_pref_provider.dart';

const _localeKey = 'locale';

const supportedLocale = ['en'];

/// Provides locale saved to local storage, if not found provides `Locale('fr')`
final localeProvider =
    StateNotifierProvider<LocaleProvider, Locale>((ref) => LocaleProvider());

class LocaleProvider extends StateNotifier<Locale> {
  LocaleProvider()
      : super(
          Locale(
            SharedPrefProvider.instance.getString(_localeKey) ??
                supportedLocale.first,
          ),
        );

  /// Saves language code of locale to local storage
  Future<void> saveLocale(Locale locale) async {
    state = locale;
    SharedPrefProvider.instance.setString(_localeKey, locale.languageCode);
  }

  Future<void> getLocale(Locale locale) async {
    state = locale;
    SharedPrefProvider.instance.getString(_localeKey);
  }
}
