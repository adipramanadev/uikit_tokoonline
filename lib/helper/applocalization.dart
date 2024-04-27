import 'package:flutter/material.dart';
import 'package:uikit_tokoonline/helper/locationDelegate.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  Future<void> load() async {
    // Load the translations for the current locale
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  String? get product {
    // Return the translated string for "product"
    return null;
  }

  String get select_different_products_the_freedom_is_yours =>
      'Pilih Produk yang ada Sukai';
  String get easy => 'Mudah Pembayaran';
  String get pay_for_the_products_you_buy_safely_and_easly =>
      'Kemudahan Dalam Pembayaran';
  String get welcome_to_back => 'welcome to back';
  String get sign_in_to_continue => 'Sign In To Continue';
  String get skip => 'skip';
  String get next => 'next';
  String get done => 'done';
  String get fast => 'Pengiriman Cepat Sampai';
  String get super_fast_delivery_right_at_your_door => 'Pengiriman Cepat';
}
