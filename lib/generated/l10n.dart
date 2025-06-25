// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Your Task`
  String get addTaskTitle {
    return Intl.message('Your Task', name: 'addTaskTitle', desc: '', args: []);
  }

  /// `Deadline`
  String get addTaskDeadline {
    return Intl.message(
      'Deadline',
      name: 'addTaskDeadline',
      desc: '',
      args: [],
    );
  }

  /// `Add Task`
  String get addTaskButtom {
    return Intl.message('Add Task', name: 'addTaskButtom', desc: '', args: []);
  }

  /// `June 16,2025`
  String get homeScreenTitle {
    return Intl.message(
      'June 16,2025',
      name: 'homeScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tasks`
  String get homeScreenTasks {
    return Intl.message('Tasks', name: 'homeScreenTasks', desc: '', args: []);
  }

  /// `To Add Your Task Press (+)`
  String get homeScreenAddTask {
    return Intl.message(
      'To Add Your Task Press (+)',
      name: 'homeScreenAddTask',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message('Login', name: 'Login', desc: '', args: []);
  }

  /// `Username`
  String get Username {
    return Intl.message('Username', name: 'Username', desc: '', args: []);
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  /// `Don’t have an account?`
  String get loginAsk {
    return Intl.message(
      'Don’t have an account?',
      name: 'loginAsk',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get Register {
    return Intl.message('Register', name: 'Register', desc: '', args: []);
  }

  /// `NEXt`
  String get PrepareNext {
    return Intl.message('NEXt', name: 'PrepareNext', desc: '', args: []);
  }

  /// `You can easily manage all of your daily `
  String get FirstPrepareDescription1 {
    return Intl.message(
      'You can easily manage all of your daily ',
      name: 'FirstPrepareDescription1',
      desc: '',
      args: [],
    );
  }

  /// `tasks in Dome for free`
  String get FirstPrepareDescription2 {
    return Intl.message(
      'tasks in Dome for free',
      name: 'FirstPrepareDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Manage your tasks`
  String get FirstPrepareTitle {
    return Intl.message(
      'Manage your tasks',
      name: 'FirstPrepareTitle',
      desc: '',
      args: [],
    );
  }

  /// `In Uptodo  you can create your Tasks`
  String get SecondPrepareDescription1 {
    return Intl.message(
      'In Uptodo  you can create your Tasks',
      name: 'SecondPrepareDescription1',
      desc: '',
      args: [],
    );
  }

  /// `personalized routine to stay productive`
  String get SecondPrepareDescription2 {
    return Intl.message(
      'personalized routine to stay productive',
      name: 'SecondPrepareDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Create daily routine`
  String get SecondPrepareTitle {
    return Intl.message(
      'Create daily routine',
      name: 'SecondPrepareTitle',
      desc: '',
      args: [],
    );
  }

  /// `GET STARTED`
  String get GetStart {
    return Intl.message('GET STARTED', name: 'GetStart', desc: '', args: []);
  }

  /// `You can organize your daily tasks by TODO`
  String get ThirdPrepareDescription1 {
    return Intl.message(
      'You can organize your daily tasks by TODO',
      name: 'ThirdPrepareDescription1',
      desc: '',
      args: [],
    );
  }

  /// `adding your tasks into separate categories`
  String get ThirdPrepareDescription2 {
    return Intl.message(
      'adding your tasks into separate categories',
      name: 'ThirdPrepareDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Orgonaize your tasks`
  String get ThirdPrepareTitle {
    return Intl.message(
      'Orgonaize your tasks',
      name: 'ThirdPrepareTitle',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message('Profile', name: 'Profile', desc: '', args: []);
  }

  /// `Camera`
  String get Camera {
    return Intl.message('Camera', name: 'Camera', desc: '', args: []);
  }

  /// `Gallery`
  String get Gallery {
    return Intl.message('Gallery', name: 'Gallery', desc: '', args: []);
  }

  /// `Delete`
  String get Delete {
    return Intl.message('Delete', name: 'Delete', desc: '', args: []);
  }

  /// `Logout`
  String get Logout {
    return Intl.message('Logout', name: 'Logout', desc: '', args: []);
  }

  /// `BACK`
  String get BACK {
    return Intl.message('BACK', name: 'BACK', desc: '', args: []);
  }

  /// `Skip`
  String get Skip {
    return Intl.message('Skip', name: 'Skip', desc: '', args: []);
  }

  /// `Create Account`
  String get CreateAccount {
    return Intl.message(
      'Create Account',
      name: 'CreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please login to your account or create`
  String get WelcomeDescription1 {
    return Intl.message(
      'Please login to your account or create',
      name: 'WelcomeDescription1',
      desc: '',
      args: [],
    );
  }

  /// `new account to continue`
  String get WelcomeDescription2 {
    return Intl.message(
      'new account to continue',
      name: 'WelcomeDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to UpTodo`
  String get Welcome {
    return Intl.message(
      'Welcome to UpTodo',
      name: 'Welcome',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message('Language', name: 'Language', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
