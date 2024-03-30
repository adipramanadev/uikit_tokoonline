import 'package:flutter/material.dart';

class AppLocalizations {
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get product => 'Product';
  String get select_different_products_the_freedom_is_yours =>
      'Select different products, the freedom is yours';
  String get easy => 'Easy';
  String get pay_for_the_products_you_buy_safely_and_easly =>
      'Pay for the products you buy safely and easily';
  String get fast => 'Fast';
  String get super_fast_delivery_right_at_your_door =>
      'Super fast delivery right at your door';
}
