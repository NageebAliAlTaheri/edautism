import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const QuatationPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const QuatationPageWidget(),
          routes: [
            FFRoute(
              name: 'QuatationPage',
              path: 'quatationPage',
              builder: (context, params) => const QuatationPageWidget(),
            ),
            FFRoute(
              name: 'Atividades_C',
              path: 'atividadesC',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesCWidget(),
              ),
            ),
            FFRoute(
              name: 'UpdateUser',
              path: 'updateUser',
              builder: (context, params) => const UpdateUserWidget(),
            ),
            FFRoute(
              name: 'Atividades_A',
              path: 'atividadesA',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesAWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_E',
              path: 'atividadesE',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesEWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_D',
              path: 'atividadesD',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesDWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_G',
              path: 'atividadesG',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesGWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_B',
              path: 'atividadesB',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesBWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_F',
              path: 'atividadesF',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesFWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_I',
              path: 'atividadesI',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesIWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_J',
              path: 'atividadesJ',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesJWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_h',
              path: 'atividadesH',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesHWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_M',
              path: 'atividadesM',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesMWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_O',
              path: 'atividadesO',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesOWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_K',
              path: 'atividadesK',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesKWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_L',
              path: 'atividadesL',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesLWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_P',
              path: 'atividadesP',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesPWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_N',
              path: 'atividadesN',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesNWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_Q',
              path: 'atividadesQ',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesQWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_R',
              path: 'atividadesR',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesRWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_T',
              path: 'atividadesT',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesTWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_S',
              path: 'atividadesS',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesSWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_W',
              path: 'atividadesW',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesWWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_V',
              path: 'atividadesV',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesVWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_X',
              path: 'atividadesX',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesXWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_Y',
              path: 'atividadesY',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesYWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_Z',
              path: 'atividadesZ',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesZWidget(),
              ),
            ),
            FFRoute(
              name: 'Number4',
              path: 'number4',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number4Widget(),
              ),
            ),
            FFRoute(
              name: 'Number0',
              path: 'number0',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number0Widget(),
              ),
            ),
            FFRoute(
              name: 'Number2',
              path: 'number2',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number2Widget(),
              ),
            ),
            FFRoute(
              name: 'Number3',
              path: 'number3',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number3Widget(),
              ),
            ),
            FFRoute(
              name: 'Number6',
              path: 'number6',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number6Widget(),
              ),
            ),
            FFRoute(
              name: 'Number5',
              path: 'number5',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number5Widget(),
              ),
            ),
            FFRoute(
              name: 'Number7',
              path: 'number7',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number7Widget(),
              ),
            ),
            FFRoute(
              name: 'Number8',
              path: 'number8',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number8Widget(),
              ),
            ),
            FFRoute(
              name: 'Number1',
              path: 'number1',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number1Widget(),
              ),
            ),
            FFRoute(
              name: 'Number10',
              path: 'number10',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number10Widget(),
              ),
            ),
            FFRoute(
              name: 'Number9',
              path: 'number9',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Number9Widget(),
              ),
            ),
            FFRoute(
              name: 'ForgetPassword',
              path: 'forgetPassword',
              builder: (context, params) => const ForgetPasswordWidget(),
            ),
            FFRoute(
              name: 'CheckYourEmail',
              path: 'checkYourEmail',
              builder: (context, params) => const CheckYourEmailWidget(),
            ),
            FFRoute(
              name: 'ActivitiesPage',
              path: 'activitiesPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: ActivitiesPageWidget(),
              ),
            ),
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'HomePage')
                  : const NavBarPage(
                      initialPage: 'HomePage',
                      page: HomePageWidget(),
                    ),
            ),
            FFRoute(
              name: 'SettingPage',
              path: 'settingPage',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'SettingPage')
                  : const SettingPageWidget(),
            ),
            FFRoute(
              name: 'logPage',
              path: 'logPage',
              builder: (context, params) => const LogPageWidget(),
            ),
            FFRoute(
              name: 'NewUser',
              path: 'newUser',
              builder: (context, params) => const NewUserWidget(),
            ),
            FFRoute(
              name: 'AddressPage',
              path: 'addressPage',
              builder: (context, params) => const AddressPageWidget(),
            ),
            FFRoute(
              name: 'PageTypeSex',
              path: 'pageTypeSex',
              builder: (context, params) => const PageTypeSexWidget(),
            ),
            FFRoute(
              name: 'RoteenPage',
              path: 'roteenPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: RoteenPageWidget(),
              ),
            ),
            FFRoute(
              name: 'ExpressionsPage',
              path: 'expressionsPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: ExpressionsPageWidget(),
              ),
            ),
            FFRoute(
              name: 'TreatmentPage',
              path: 'treatmentPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: TreatmentPageWidget(),
              ),
            ),
            FFRoute(
              name: 'BehavioursPage',
              path: 'behavioursPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: BehavioursPageWidget(),
              ),
            ),
            FFRoute(
              name: 'SymptomsPage',
              path: 'symptomsPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: SymptomsPageWidget(),
              ),
            ),
            FFRoute(
              name: 'SlociPage',
              path: 'slociPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: SlociPageWidget(),
              ),
            ),
            FFRoute(
              name: 'SlociPage1',
              path: 'slociPage1',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: SlociPage1Widget(),
              ),
            ),
            FFRoute(
              name: 'SlociPage2',
              path: 'slociPage2',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: SlociPage2Widget(),
              ),
            ),
            FFRoute(
              name: 'PageSloci',
              path: 'pageSloci',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PageSlociWidget(),
              ),
            ),
            FFRoute(
              name: 'PageSloci1',
              path: 'pageSloci1',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PageSloci1Widget(),
              ),
            ),
            FFRoute(
              name: 'PageSloci2',
              path: 'pageSloci2',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PageSloci2Widget(),
              ),
            ),
            FFRoute(
              name: 'PageSloci3',
              path: 'pageSloci3',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PageSloci3Widget(),
              ),
            ),
            FFRoute(
              name: 'PageSloci4',
              path: 'pageSloci4',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PageSloci4Widget(),
              ),
            ),
            FFRoute(
              name: 'PageSloci5',
              path: 'pageSloci5',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PageSloci5Widget(),
              ),
            ),
            FFRoute(
              name: 'treatment1',
              path: 'treatment1',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Treatment1Widget(),
              ),
            ),
            FFRoute(
              name: 'treatment2',
              path: 'treatment2',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Treatment2Widget(),
              ),
            ),
            FFRoute(
              name: 'treatment3',
              path: 'treatment3',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Treatment3Widget(),
              ),
            ),
            FFRoute(
              name: 'treatment4',
              path: 'treatment4',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Treatment4Widget(),
              ),
            ),
            FFRoute(
              name: 'treatment5',
              path: 'treatment5',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Treatment5Widget(),
              ),
            ),
            FFRoute(
              name: 'treatment6',
              path: 'treatment6',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Treatment6Widget(),
              ),
            ),
            FFRoute(
              name: 'PageGems1',
              path: 'pageGems1',
              builder: (context, params) => NavBarPage(
                initialPage: '',
                page: PageGems1Widget(
                  stopeSound:
                      params.getParam('stopeSound', ParamType.FFUploadedFile),
                ),
              ),
            ),
            FFRoute(
              name: 'DeerPage',
              path: 'deerPage',
              builder: (context, params) => const DeerPageWidget(),
            ),
            FFRoute(
              name: 'TigerPage',
              path: 'tigerPage',
              builder: (context, params) => const TigerPageWidget(),
            ),
            FFRoute(
              name: 'LionPage',
              path: 'lionPage',
              builder: (context, params) => const LionPageWidget(),
            ),
            FFRoute(
              name: 'ElephentPage',
              path: 'elephentPage',
              builder: (context, params) => const ElephentPageWidget(),
            ),
            FFRoute(
              name: 'BirdPage',
              path: 'birdPage',
              builder: (context, params) => const BirdPageWidget(),
            ),
            FFRoute(
              name: 'ChickenPage',
              path: 'chickenPage',
              builder: (context, params) => const ChickenPageWidget(),
            ),
            FFRoute(
              name: 'PigPage',
              path: 'pigPage',
              builder: (context, params) => const PigPageWidget(),
            ),
            FFRoute(
              name: 'SheepPage',
              path: 'sheepPage',
              builder: (context, params) => const SheepPageWidget(),
            ),
            FFRoute(
              name: 'CowPage',
              path: 'cowPage',
              builder: (context, params) => const CowPageWidget(),
            ),
            FFRoute(
              name: 'Doge1Page',
              path: 'doge1Page',
              builder: (context, params) => const Doge1PageWidget(),
            ),
            FFRoute(
              name: 'Doge2Page',
              path: 'doge2Page',
              builder: (context, params) => const Doge2PageWidget(),
            ),
            FFRoute(
              name: 'CatPage',
              path: 'catPage',
              builder: (context, params) => const CatPageWidget(),
            ),
            FFRoute(
              name: 'MonkeyPage',
              path: 'monkeyPage',
              builder: (context, params) => const MonkeyPageWidget(),
            ),
            FFRoute(
              name: 'RabbitPage',
              path: 'rabbitPage',
              builder: (context, params) => const RabbitPageWidget(),
            ),
            FFRoute(
              name: 'FrogPage',
              path: 'frogPage',
              builder: (context, params) => const FrogPageWidget(),
            ),
            FFRoute(
              name: 'TurtlePage',
              path: 'turtlePage',
              builder: (context, params) => const TurtlePageWidget(),
            ),
            FFRoute(
              name: 'FroogPage',
              path: 'froogPage',
              builder: (context, params) => const FroogPageWidget(),
            ),
            FFRoute(
              name: 'aDuckPage',
              path: 'aDuckPage',
              builder: (context, params) => const ADuckPageWidget(),
            ),
            FFRoute(
              name: 'ButterflyPage',
              path: 'butterflyPage',
              builder: (context, params) => const ButterflyPageWidget(),
            ),
            FFRoute(
              name: 'DonkeyPage',
              path: 'donkeyPage',
              builder: (context, params) => const DonkeyPageWidget(),
            ),
            FFRoute(
              name: 'HorsePage',
              path: 'horsePage',
              builder: (context, params) => const HorsePageWidget(),
            ),
            FFRoute(
              name: 'PageGems1Copy',
              path: 'pageGems1Copy',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PageGems1CopyWidget(),
              ),
            ),
            FFRoute(
              name: 'Anmels11',
              path: 'anmels11',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: Anmels11Widget(),
              ),
            ),
            FFRoute(
              name: 'DoctorPage',
              path: 'doctorPage',
              builder: (context, params) => const DoctorPageWidget(),
            ),
            FFRoute(
              name: 'EditeProfile',
              path: 'editeProfile',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: EditeProfileWidget(),
              ),
            ),
            FFRoute(
              name: 'Teat1',
              path: 'teat1',
              builder: (context, params) => const Teat1Widget(),
            ),
            FFRoute(
              name: 'ChildernOrDoctor',
              path: 'childernOrDoctor',
              builder: (context, params) => const ChildernOrDoctorWidget(),
            ),
            FFRoute(
              name: 'FruitPage',
              path: 'fruitPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: FruitPageWidget(),
              ),
            ),
            FFRoute(
              name: 'GameRun',
              path: 'gameRun',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GameRunWidget(),
              ),
            ),
            FFRoute(
              name: 'Gameonline',
              path: 'gameonline',
              builder: (context, params) => GameonlineWidget(
                stopSound: params.getParam('stopSound', ParamType.bool),
              ),
            ),
            FFRoute(
              name: 'Atividades_alef',
              path: 'atividadesAlef',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesAlefWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_ba',
              path: 'atividadesBa',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesBaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_ta',
              path: 'atividadesTa',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesTaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_tha',
              path: 'atividadesTha',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesThaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_gem',
              path: 'atividadesGem',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesGemWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_hka',
              path: 'atividadesHka',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesHkaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_kha',
              path: 'atividadesKha',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesKhaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_dal',
              path: 'atividadesDal',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesDalWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_thal',
              path: 'atividadesThal',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesThalWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_ra',
              path: 'atividadesRa',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesRaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_zai',
              path: 'atividadesZai',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesZaiWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_sen',
              path: 'atividadesSen',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesSenWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_sheen',
              path: 'atividadesSheen',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesSheenWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_sad',
              path: 'atividadesSad',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesSadWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_dad',
              path: 'atividadesDad',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesDadWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_tta',
              path: 'atividadesTta',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesTtaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_dha',
              path: 'atividadesDha',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesDhaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_ain',
              path: 'atividadesAin',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesAinWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_gain',
              path: 'atividadesGain',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesGainWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_fa',
              path: 'atividadesFa',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesFaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_ghaf',
              path: 'atividadesGhaf',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesGhafWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_kaf',
              path: 'atividadesKaf',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesKafWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_lam',
              path: 'atividadesLam',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesLamWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_mem',
              path: 'atividadesMem',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesMemWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_non',
              path: 'atividadesNon',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesNonWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_ha',
              path: 'atividadesHa',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesHaWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_waw',
              path: 'atividadesWaw',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesWawWidget(),
              ),
            ),
            FFRoute(
              name: 'Atividades_ya',
              path: 'atividadesYa',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: AtividadesYaWidget(),
              ),
            ),
            FFRoute(
              name: 'tetchure',
              path: 'tetchure',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: TetchureWidget(),
              ),
            ),
            FFRoute(
              name: 'doctor',
              path: 'doctor',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: DoctorWidget(),
              ),
            ),
            FFRoute(
              name: 'artist',
              path: 'artist',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: ArtistWidget(),
              ),
            ),
            FFRoute(
              name: 'a_cook',
              path: 'aCook',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: ACookWidget(),
              ),
            ),
            FFRoute(
              name: 'driver',
              path: 'driver',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: DriverWidget(),
              ),
            ),
            FFRoute(
              name: 'Engrining',
              path: 'engrining',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: EngriningWidget(),
              ),
            ),
            FFRoute(
              name: 'farms',
              path: 'farms',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: FarmsWidget(),
              ),
            ),
            FFRoute(
              name: 'policeman',
              path: 'policeman',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PolicemanWidget(),
              ),
            ),
            FFRoute(
              name: 'pilot',
              path: 'pilot',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PilotWidget(),
              ),
            ),
            FFRoute(
              name: 'scubaDiver',
              path: 'scubaDiver',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: ScubaDiverWidget(),
              ),
            ),
            FFRoute(
              name: 'test111',
              path: 'test111',
              builder: (context, params) => const Test111Widget(),
            ),
            FFRoute(
              name: 'PageLetter',
              path: 'pageLetter',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: PageLetterWidget(),
              ),
            ),
            FFRoute(
              name: 'GameRead',
              path: 'gameRead',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GameReadWidget(),
              ),
            ),
            FFRoute(
              name: 'GameWears',
              path: 'gameWears',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GameWearsWidget(),
              ),
            ),
            FFRoute(
              name: 'GameStudy',
              path: 'gameStudy',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GameStudyWidget(),
              ),
            ),
            FFRoute(
              name: 'Gameflay',
              path: 'gameflay',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GameflayWidget(),
              ),
            ),
            FFRoute(
              name: 'Gamepniaplle',
              path: 'gamepniaplle',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GamepniaplleWidget(),
              ),
            ),
            FFRoute(
              name: 'Gamewatermelon',
              path: 'gamewatermelon',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GamewatermelonWidget(),
              ),
            ),
            FFRoute(
              name: 'Gamesecceusse',
              path: 'gamesecceusse',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GamesecceusseWidget(),
              ),
            ),
            FFRoute(
              name: 'Gamebnanas',
              path: 'gamebnanas',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: GamebnanasWidget(),
              ),
            ),
            FFRoute(
              name: 'LogIn',
              path: 'logIn',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'LogIn')
                  : const NavBarPage(
                      initialPage: 'LogIn',
                      page: LogInWidget(),
                    ),
            ),
            FFRoute(
              name: 'ProfessionsPage',
              path: 'professionsPage',
              builder: (context, params) => const NavBarPage(
                initialPage: '',
                page: ProfessionsPageWidget(),
              ),
            ),
            FFRoute(
              name: 'audioChatDemo',
              path: 'audioChatDemo',
              builder: (context, params) => const AudioChatDemoWidget(),
            ),
            FFRoute(
              name: 'FILE1',
              path: 'file1',
              builder: (context, params) => const File1Widget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/quatationPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  child: Image.asset(
                    'assets/images/ed.PNG',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
