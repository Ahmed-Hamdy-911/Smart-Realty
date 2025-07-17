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

  /// `Find The Place Of \nYour Dream`
  String get splashText1 {
    return Intl.message(
      'Find The Place Of \nYour Dream',
      name: 'splashText1',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy the convenience of purchasing with our application.`
  String get splashText2 {
    return Intl.message(
      'Enjoy the convenience of purchasing with our application.',
      name: 'splashText2',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get GetStarted {
    return Intl.message('Get Started', name: 'GetStarted', desc: '', args: []);
  }

  /// `Sign In`
  String get SignIn {
    return Intl.message('Sign In', name: 'SignIn', desc: '', args: []);
  }

  /// `Welcome back, you've been missed`
  String get WelcomeBack {
    return Intl.message(
      'Welcome back, you\'ve been missed',
      name: 'WelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message('Email', name: 'Email', desc: '', args: []);
  }

  /// `Enter your email`
  String get EnterEmail {
    return Intl.message(
      'Enter your email',
      name: 'EnterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  /// `Enter your password`
  String get EnterPassword {
    return Intl.message(
      'Enter your password',
      name: 'EnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get PasswordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'PasswordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get PasswordRequired {
    return Intl.message(
      'This field is required',
      name: 'PasswordRequired',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get FieldRequired {
    return Intl.message(
      'This field is required',
      name: 'FieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `Too short`
  String get TooShort {
    return Intl.message('Too short', name: 'TooShort', desc: '', args: []);
  }

  /// `Name should not start with number`
  String get NameStartsWithNumber {
    return Intl.message(
      'Name should not start with number',
      name: 'NameStartsWithNumber',
      desc: '',
      args: [],
    );
  }

  /// `Name should not contain special characters`
  String get NameContainsSpecialChars {
    return Intl.message(
      'Name should not contain special characters',
      name: 'NameContainsSpecialChars',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get InvalidEmail {
    return Intl.message(
      'Invalid email address',
      name: 'InvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get PasswordLength {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'PasswordLength',
      desc: '',
      args: [],
    );
  }

  /// `Password must include at least one lowercase letter`
  String get PasswordLowercase {
    return Intl.message(
      'Password must include at least one lowercase letter',
      name: 'PasswordLowercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must include at least one uppercase letter`
  String get PasswordUppercase {
    return Intl.message(
      'Password must include at least one uppercase letter',
      name: 'PasswordUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must include at least one number`
  String get PasswordNumber {
    return Intl.message(
      'Password must include at least one number',
      name: 'PasswordNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password must include at least one special character (@, $, !, %, *, ?, &)`
  String get PasswordSpecialChar {
    return Intl.message(
      'Password must include at least one special character (@, \$, !, %, *, ?, &)',
      name: 'PasswordSpecialChar',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get RememberMe {
    return Intl.message('Remember me', name: 'RememberMe', desc: '', args: []);
  }

  /// `Forgot password?`
  String get ForgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or sign in with`
  String get OrSignInWith {
    return Intl.message(
      'Or sign in with',
      name: 'OrSignInWith',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get DontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'DontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message('Sign Up', name: 'SignUp', desc: '', args: []);
  }

  /// `Forget Password`
  String get ForgetPassword {
    return Intl.message(
      'Forget Password',
      name: 'ForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to reset your password`
  String get ResetPassword {
    return Intl.message(
      'Enter your email to reset your password',
      name: 'ResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get Send {
    return Intl.message('Send', name: 'Send', desc: '', args: []);
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

  /// `Fill in the form below to create an account`
  String get FillForm {
    return Intl.message(
      'Fill in the form below to create an account',
      name: 'FillForm',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message('Name', name: 'Name', desc: '', args: []);
  }

  /// `Enter your name`
  String get EnterName {
    return Intl.message(
      'Enter your name',
      name: 'EnterName',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter confirm password`
  String get EnterConfirmPassword {
    return Intl.message(
      'Enter confirm password',
      name: 'EnterConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Agree with `
  String get AgreeWith {
    return Intl.message('Agree with ', name: 'AgreeWith', desc: '', args: []);
  }

  /// `Terms & Condition`
  String get TermsCondition {
    return Intl.message(
      'Terms & Condition',
      name: 'TermsCondition',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get AlreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'AlreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `We have sent you a link to verify your email address.`
  String get EmailVerificationMessage {
    return Intl.message(
      'We have sent you a link to verify your email address.',
      name: 'EmailVerificationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Verify Your Email`
  String get VerifyYourEmail {
    return Intl.message(
      'Verify Your Email',
      name: 'VerifyYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message('Continue', name: 'Continue', desc: '', args: []);
  }

  /// `Verify Code`
  String get VerifyCode {
    return Intl.message('Verify Code', name: 'VerifyCode', desc: '', args: []);
  }

  /// `Please enter the code we just sent to email \n`
  String get EnterCode {
    return Intl.message(
      'Please enter the code we just sent to email \n',
      name: 'EnterCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get ResendCode {
    return Intl.message('Resend code', name: 'ResendCode', desc: '', args: []);
  }

  /// `Verify`
  String get Verify {
    return Intl.message('Verify', name: 'Verify', desc: '', args: []);
  }

  /// `Complete Your Profile`
  String get CompleteProfile {
    return Intl.message(
      'Complete Your Profile',
      name: 'CompleteProfile',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry, only you can see your personal data. No one else will be able to see it.`
  String get PersonalData {
    return Intl.message(
      'Don\'t worry, only you can see your personal data. No one else will be able to see it.',
      name: 'PersonalData',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get PhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'PhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter Phone Number`
  String get EnterPhoneNumber {
    return Intl.message(
      'Enter Phone Number',
      name: 'EnterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `User Role`
  String get UserRole {
    return Intl.message('User Role', name: 'UserRole', desc: '', args: []);
  }

  /// `Select Role`
  String get SelectRole {
    return Intl.message('Select Role', name: 'SelectRole', desc: '', args: []);
  }

  /// `Property Owner`
  String get PropertyOwner {
    return Intl.message(
      'Property Owner',
      name: 'PropertyOwner',
      desc: '',
      args: [],
    );
  }

  /// `Tenant`
  String get Tenant {
    return Intl.message('Tenant', name: 'Tenant', desc: '', args: []);
  }

  /// `What is Your Location?`
  String get WhatIsYourLocation {
    return Intl.message(
      'What is Your Location?',
      name: 'WhatIsYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `We need to know your location in order to suggest nearby services.`
  String get LocationPurpose {
    return Intl.message(
      'We need to know your location in order to suggest nearby services.',
      name: 'LocationPurpose',
      desc: '',
      args: [],
    );
  }

  /// `Allow Location Access`
  String get AllowLocationAccess {
    return Intl.message(
      'Allow Location Access',
      name: 'AllowLocationAccess',
      desc: '',
      args: [],
    );
  }

  /// `Enter Location Manually`
  String get EnterLocationManually {
    return Intl.message(
      'Enter Location Manually',
      name: 'EnterLocationManually',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get NewPassword {
    return Intl.message(
      'New Password',
      name: 'NewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your new password must be different from your old password.`
  String get PasswordDifferent {
    return Intl.message(
      'Your new password must be different from your old password.',
      name: 'PasswordDifferent',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the code?`
  String get DidnotReceiveCode {
    return Intl.message(
      'Didn\'t receive the code?',
      name: 'DidnotReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Add Location`
  String get AddLocation {
    return Intl.message(
      'Add Location',
      name: 'AddLocation',
      desc: '',
      args: [],
    );
  }

  /// `Change Location`
  String get ChangeLocation {
    return Intl.message(
      'Change Location',
      name: 'ChangeLocation',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get Notifications {
    return Intl.message(
      'Notifications',
      name: 'Notifications',
      desc: '',
      args: [],
    );
  }

  /// `Enter your location`
  String get EnterYourLocation {
    return Intl.message(
      'Enter your location',
      name: 'EnterYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Use my current location`
  String get UseMyCurrentLocation {
    return Intl.message(
      'Use my current location',
      name: 'UseMyCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `SEARCH RESULT`
  String get SearchResult {
    return Intl.message(
      'SEARCH RESULT',
      name: 'SearchResult',
      desc: '',
      args: [],
    );
  }

  /// `Search for properties...`
  String get SearchForProperties {
    return Intl.message(
      'Search for properties...',
      name: 'SearchForProperties',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get Filter {
    return Intl.message('Filter', name: 'Filter', desc: '', args: []);
  }

  /// `Home`
  String get Home {
    return Intl.message('Home', name: 'Home', desc: '', args: []);
  }

  /// `Search`
  String get Search {
    return Intl.message('Search', name: 'Search', desc: '', args: []);
  }

  /// `Add to bookmark`
  String get AddToBookmark {
    return Intl.message(
      'Add to bookmark',
      name: 'AddToBookmark',
      desc: '',
      args: [],
    );
  }

  /// `Bookmarks`
  String get Bookmarks {
    return Intl.message('Bookmarks', name: 'Bookmarks', desc: '', args: []);
  }

  /// `Profile`
  String get Profile {
    return Intl.message('Profile', name: 'Profile', desc: '', args: []);
  }

  /// `Last Result`
  String get LAST_RESULT {
    return Intl.message('Last Result', name: 'LAST_RESULT', desc: '', args: []);
  }

  /// `No bookmarks yet!`
  String get NoBookmarksYet {
    return Intl.message(
      'No bookmarks yet!',
      name: 'NoBookmarksYet',
      desc: '',
      args: [],
    );
  }

  /// `Your Profile`
  String get YourProfile {
    return Intl.message(
      'Your Profile',
      name: 'YourProfile',
      desc: '',
      args: [],
    );
  }

  /// `Add Properties`
  String get AddProperties {
    return Intl.message(
      'Add Properties',
      name: 'AddProperties',
      desc: '',
      args: [],
    );
  }

  /// `My Properties`
  String get MyProperties {
    return Intl.message(
      'My Properties',
      name: 'MyProperties',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get Chats {
    return Intl.message('Chats', name: 'Chats', desc: '', args: []);
  }

  /// `Payment Method`
  String get PaymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'PaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get Settings {
    return Intl.message('Settings', name: 'Settings', desc: '', args: []);
  }

  /// `Help Center`
  String get HelpCenter {
    return Intl.message('Help Center', name: 'HelpCenter', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get PrivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'PrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Invite Friends`
  String get InviteFriends {
    return Intl.message(
      'Invite Friends',
      name: 'InviteFriends',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get LogOut {
    return Intl.message('Log out', name: 'LogOut', desc: '', args: []);
  }

  /// `Logout`
  String get Logout {
    return Intl.message('Logout', name: 'Logout', desc: '', args: []);
  }

  /// `Are you sure you want to log out?`
  String get LogoutConfirmation {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'LogoutConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Logout`
  String get ConfirmLogout {
    return Intl.message(
      'Yes, Logout',
      name: 'ConfirmLogout',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message('Cancel', name: 'Cancel', desc: '', args: []);
  }

  /// `Add Property`
  String get AddProperty {
    return Intl.message(
      'Add Property',
      name: 'AddProperty',
      desc: '',
      args: [],
    );
  }

  /// `I want to`
  String get IWantTo {
    return Intl.message('I want to', name: 'IWantTo', desc: '', args: []);
  }

  /// `Sell`
  String get Sell {
    return Intl.message('Sell', name: 'Sell', desc: '', args: []);
  }

  /// `Buy`
  String get Buy {
    return Intl.message('Buy', name: 'Buy', desc: '', args: []);
  }

  /// `Rent`
  String get Rent {
    return Intl.message('Rent', name: 'Rent', desc: '', args: []);
  }

  /// `Select category`
  String get SelectCategory {
    return Intl.message(
      'Select category',
      name: 'SelectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Land`
  String get Land {
    return Intl.message('Land', name: 'Land', desc: '', args: []);
  }

  /// `Apartment`
  String get Apartment {
    return Intl.message('Apartment', name: 'Apartment', desc: '', args: []);
  }

  /// `Building`
  String get Building {
    return Intl.message('Building', name: 'Building', desc: '', args: []);
  }

  /// `House`
  String get House {
    return Intl.message('House', name: 'House', desc: '', args: []);
  }

  /// `Room`
  String get Room {
    return Intl.message('Room', name: 'Room', desc: '', args: []);
  }

  /// `Bedroom`
  String get Bedroom {
    return Intl.message('Bedroom', name: 'Bedroom', desc: '', args: []);
  }

  /// `Bed`
  String get Bed {
    return Intl.message('Bed', name: 'Bed', desc: '', args: []);
  }

  /// `Kitchen`
  String get Kitchen {
    return Intl.message('Kitchen', name: 'Kitchen', desc: '', args: []);
  }

  /// `Bathroom`
  String get Bathroom {
    return Intl.message('Bathroom', name: 'Bathroom', desc: '', args: []);
  }

  /// `Floor`
  String get Floor {
    return Intl.message('Floor', name: 'Floor', desc: '', args: []);
  }

  /// `Area`
  String get Area {
    return Intl.message('Area', name: 'Area', desc: '', args: []);
  }

  /// `Is it negotiable?`
  String get IsItNegotiable {
    return Intl.message(
      'Is it negotiable?',
      name: 'IsItNegotiable',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get Price {
    return Intl.message('Price', name: 'Price', desc: '', args: []);
  }

  /// `Property name`
  String get PropertyName {
    return Intl.message(
      'Property name',
      name: 'PropertyName',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get Address {
    return Intl.message('Address', name: 'Address', desc: '', args: []);
  }

  /// `Contact number`
  String get ContactNumber {
    return Intl.message(
      'Contact number',
      name: 'ContactNumber',
      desc: '',
      args: [],
    );
  }

  /// `Use my personal number`
  String get UseMyPersonalNumber {
    return Intl.message(
      'Use my personal number',
      name: 'UseMyPersonalNumber',
      desc: '',
      args: [],
    );
  }

  /// `Upload image`
  String get UploadImage {
    return Intl.message(
      'Upload image',
      name: 'UploadImage',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get Description {
    return Intl.message('Description', name: 'Description', desc: '', args: []);
  }

  /// `Preferably filled to add more details about the property`
  String get PreferablyFilled {
    return Intl.message(
      'Preferably filled to add more details about the property',
      name: 'PreferablyFilled',
      desc: '',
      args: [],
    );
  }

  /// `Who are you`
  String get WhoAreYou {
    return Intl.message('Who are you', name: 'WhoAreYou', desc: '', args: []);
  }

  /// `Owner`
  String get Owner {
    return Intl.message('Owner', name: 'Owner', desc: '', args: []);
  }

  /// `Manager`
  String get Manager {
    return Intl.message('Manager', name: 'Manager', desc: '', args: []);
  }

  /// `Guard`
  String get Guard {
    return Intl.message('Guard', name: 'Guard', desc: '', args: []);
  }

  /// `Broker`
  String get Broker {
    return Intl.message('Broker', name: 'Broker', desc: '', args: []);
  }

  /// `Other`
  String get Other {
    return Intl.message('Other', name: 'Other', desc: '', args: []);
  }

  /// `From camera`
  String get FromCamera {
    return Intl.message('From camera', name: 'FromCamera', desc: '', args: []);
  }

  /// `From gallery`
  String get FromGallery {
    return Intl.message(
      'From gallery',
      name: 'FromGallery',
      desc: '',
      args: [],
    );
  }

  /// `to contact`
  String get toContact {
    return Intl.message('to contact', name: 'toContact', desc: '', args: []);
  }

  /// `You are a `
  String get youAreA {
    return Intl.message('You are a ', name: 'youAreA', desc: '', args: []);
  }

  /// `Invalid phone number format`
  String get invalidPhoneNumber {
    return Intl.message(
      'Invalid phone number format',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is too short`
  String get shortPhoneNumber {
    return Intl.message(
      'Phone number is too short',
      name: 'shortPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number.`
  String get phone_number_error {
    return Intl.message(
      'Please enter a valid phone number.',
      name: 'phone_number_error',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `New Properties`
  String get newProperties {
    return Intl.message(
      'New Properties',
      name: 'newProperties',
      desc: '',
      args: [],
    );
  }

  /// `Best offer`
  String get bestOffer {
    return Intl.message('Best offer', name: 'bestOffer', desc: '', args: []);
  }

  /// `Nearby`
  String get nearby {
    return Intl.message('Nearby', name: 'nearby', desc: '', args: []);
  }

  /// `For sale`
  String get forSale {
    return Intl.message('For sale', name: 'forSale', desc: '', args: []);
  }

  /// `For rent`
  String get forRent {
    return Intl.message('For rent', name: 'forRent', desc: '', args: []);
  }

  /// `Top rates`
  String get topRates {
    return Intl.message('Top rates', name: 'topRates', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Category details`
  String get categoryDetails {
    return Intl.message(
      'Category details',
      name: 'categoryDetails',
      desc: '',
      args: [],
    );
  }

  /// `Egypt`
  String get egypt {
    return Intl.message('Egypt', name: 'egypt', desc: '', args: []);
  }

  /// `Saudi Arabia`
  String get saudiArabia {
    return Intl.message(
      'Saudi Arabia',
      name: 'saudiArabia',
      desc: '',
      args: [],
    );
  }

  /// `United States`
  String get unitedStates {
    return Intl.message(
      'United States',
      name: 'unitedStates',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egyptCurrency {
    return Intl.message('EGP', name: 'egyptCurrency', desc: '', args: []);
  }

  /// `SAR`
  String get saudiCurrency {
    return Intl.message('SAR', name: 'saudiCurrency', desc: '', args: []);
  }

  /// `USD`
  String get usCurrency {
    return Intl.message('USD', name: 'usCurrency', desc: '', args: []);
  }

  /// `Step`
  String get Step {
    return Intl.message('Step', name: 'Step', desc: '', args: []);
  }

  /// `of`
  String get Of {
    return Intl.message('of', name: 'Of', desc: '', args: []);
  }

  /// `Next`
  String get Next {
    return Intl.message('Next', name: 'Next', desc: '', args: []);
  }

  /// `Previous`
  String get Previous {
    return Intl.message('Previous', name: 'Previous', desc: '', args: []);
  }

  /// `Submit`
  String get Submit {
    return Intl.message('Submit', name: 'Submit', desc: '', args: []);
  }

  /// `We value your privacy. This policy explains how we collect and use your data.`
  String get PrivacyIntroduction {
    return Intl.message(
      'We value your privacy. This policy explains how we collect and use your data.',
      name: 'PrivacyIntroduction',
      desc: '',
      args: [],
    );
  }

  /// `We collect personal information such as name, email, and location to improve our services.`
  String get DataCollection {
    return Intl.message(
      'We collect personal information such as name, email, and location to improve our services.',
      name: 'DataCollection',
      desc: '',
      args: [],
    );
  }

  /// `Your data is used for analytics, advertising, and app functionality.`
  String get DataUsage {
    return Intl.message(
      'Your data is used for analytics, advertising, and app functionality.',
      name: 'DataUsage',
      desc: '',
      args: [],
    );
  }

  /// `We may share data with third-party services such as Google Ads and Firebase.`
  String get ThirdPartySharing {
    return Intl.message(
      'We may share data with third-party services such as Google Ads and Firebase.',
      name: 'ThirdPartySharing',
      desc: '',
      args: [],
    );
  }

  /// `We implement strict security measures to protect your data.`
  String get SecurityMeasures {
    return Intl.message(
      'We implement strict security measures to protect your data.',
      name: 'SecurityMeasures',
      desc: '',
      args: [],
    );
  }

  /// `You can request to delete or access your data anytime.`
  String get UserRights {
    return Intl.message(
      'You can request to delete or access your data anytime.',
      name: 'UserRights',
      desc: '',
      args: [],
    );
  }

  /// `We may update this policy, and we will notify users of changes.`
  String get ChangesToPolicy {
    return Intl.message(
      'We may update this policy, and we will notify users of changes.',
      name: 'ChangesToPolicy',
      desc: '',
      args: [],
    );
  }

  /// `For questions, contact us at support.smart.realty@gmail.com.`
  String get ContactInformation {
    return Intl.message(
      'For questions, contact us at support.smart.realty@gmail.com.',
      name: 'ContactInformation',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
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
