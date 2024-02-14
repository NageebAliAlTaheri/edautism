import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ar', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? arText = '',
    String? enText = '',
  }) =>
      [arText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // QuatationPage
  {
    '8ck7kxq1': {
      'ar': 'الاستبانة',
      'en': '',
    },
    'hkh25l2j': {
      'ar': 'هل يحب طفلك العناق والجلوس في الحضن ',
      'en': '',
    },
    'bnkgwse5': {
      'ar': 'نعم',
      'en': '',
    },
    'lo20ruhc': {
      'ar': 'قليلا',
      'en': '',
    },
    'mmh685ge': {
      'ar': 'لا',
      'en': '',
    },
    'nvfblgm1': {
      'ar': 'هل يهتم بالأطفال من سنه ونفس عمره',
      'en': '',
    },
    'softh7dr': {
      'ar': 'نعم',
      'en': '',
    },
    'i5wv71f2': {
      'ar': 'قليلا',
      'en': '',
    },
    'kup4x4ec': {
      'ar': 'لا',
      'en': '',
    },
    '7cwgabfl': {
      'ar': 'هل يميل إلى العناد -لا يرد على التلفون، لا يلبي النداء',
      'en': '',
    },
    'icltl2pq': {
      'ar': 'نعم',
      'en': '',
    },
    '0d80l2sg': {
      'ar': 'قليلا',
      'en': '',
    },
    'uai4kvp4': {
      'ar': 'لا',
      'en': '',
    },
    'dku3lfs4': {
      'ar': 'هل ينظر بالعين لك للحظة أو لحظات',
      'en': '',
    },
    'z59vtm9o': {
      'ar': 'نعم',
      'en': '',
    },
    '2wnde8ov': {
      'ar': 'قليلا',
      'en': '',
    },
    'qt34uc6d': {
      'ar': 'لا',
      'en': '',
    },
    'i70rnx8n': {
      'ar':
          'هل يظهر حساسية بالغة من بعض المثيرات مثل أصوات معينة - يضع اصباعه بأذنه حتى لا يسمعها ',
      'en': '',
    },
    'l6wt1794': {
      'ar': 'نعم',
      'en': '',
    },
    '65d0c0kx': {
      'ar': 'قليلا',
      'en': '',
    },
    'f9l4om08': {
      'ar': 'لا',
      'en': '',
    },
    'nlt33bvd': {
      'ar': 'هل يتفاعل مع تعابير وجهكك مثل الابتسامة أو الضحك',
      'en': '',
    },
    '18cbyw56': {
      'ar': 'نعم',
      'en': '',
    },
    'w5rsl7c7': {
      'ar': 'قليلا',
      'en': '',
    },
    'kqikfhj8': {
      'ar': 'لا',
      'en': '',
    },
    'av3s1civ': {
      'ar': 'هل يستجيب لاسمه عند مناداته',
      'en': '',
    },
    'am0gm8m7': {
      'ar': 'نعم',
      'en': '',
    },
    'yjt9bake': {
      'ar': 'قليلا',
      'en': '',
    },
    'uek7v8s1': {
      'ar': 'لا',
      'en': '',
    },
    'coavbz6j': {
      'ar': 'هل اصبح يفضل العزلة والوحدة',
      'en': '',
    },
    'kcbzkuff': {
      'ar': 'نعم',
      'en': '',
    },
    'wiet2ex2': {
      'ar': 'قليلا',
      'en': '',
    },
    'mi2i4lci': {
      'ar': 'لا',
      'en': '',
    },
    '9ouik675': {
      'ar': 'هل يحاول جلب انتباهك لبعض نشاطاته واهتماماته',
      'en': '',
    },
    'dqm3scgh': {
      'ar': 'نعم',
      'en': '',
    },
    's71iqz4e': {
      'ar': 'قليلا',
      'en': '',
    },
    'vebbyzof': {
      'ar': 'لا',
      'en': '',
    },
    'tfyq1m0k': {
      'ar': 'هل خطر ببالك ان يكون طفلك اصم أو ابهم',
      'en': '',
    },
    '0bw7k61a': {
      'ar': 'نعم',
      'en': '',
    },
    'a45ep3tr': {
      'ar': 'قليلا',
      'en': '',
    },
    '9fvxw4qu': {
      'ar': 'لا',
      'en': '',
    },
    '3j2saufq': {
      'ar': 'هل يكون احيانا شارد الذهن أو يتجول دون هدف',
      'en': '',
    },
    'xr7rk0sc': {
      'ar': 'نعم',
      'en': '',
    },
    'p32alzlv': {
      'ar': 'قليلا',
      'en': '',
    },
    'maxfxv1c': {
      'ar': 'لا',
      'en': '',
    },
    'aruuokac': {
      'ar': 'هل يميل الى النظر الى شيء في الغرفة أو لعبة لفترة طويلة ',
      'en': '',
    },
    'py18y2iq': {
      'ar': 'نعم',
      'en': '',
    },
    'nwnu4bpo': {
      'ar': 'قليلا',
      'en': '',
    },
    '7zgvmmnz': {
      'ar': 'لا',
      'en': '',
    },
    'sx9o9ub1': {
      'ar': 'هل يظهر نوبات غضب',
      'en': '',
    },
    'f9invj87': {
      'ar': 'نعم',
      'en': '',
    },
    'qatjnudm': {
      'ar': 'قليلا',
      'en': '',
    },
    'mhdnzvam': {
      'ar': 'لا',
      'en': '',
    },
    'ly8du24j': {
      'ar': 'هل يمانع تغيير وضع العابه أوالاغراض في غرفته ',
      'en': '',
    },
    'uis7dcht': {
      'ar': 'نعم',
      'en': '',
    },
    '83qlhm42': {
      'ar': 'قليلا',
      'en': '',
    },
    'n04fz83l': {
      'ar': 'لا',
      'en': '',
    },
    'nqe0q7yo': {
      'ar': 'هل يميل الى ترداد ما تقولينه له بشكل ملفت',
      'en': '',
    },
    '72mm3lpv': {
      'ar': 'نعم',
      'en': '',
    },
    'yf909azt': {
      'ar': 'قليلا',
      'en': '',
    },
    '8kudgn5s': {
      'ar': 'لا',
      'en': '',
    },
    '8r4o2lv8': {
      'ar': 'هل يظهر عليه علامات المتعة  في اللعب مع اخوته أو الاخرين ',
      'en': '',
    },
    'bi9imx12': {
      'ar': 'نعم',
      'en': '',
    },
    'jangkxil': {
      'ar': 'قليلا',
      'en': '',
    },
    'mr2h19l6': {
      'ar': 'لا',
      'en': '',
    },
    'vfuw0iw5': {
      'ar': 'هل يستعمل كلمات مفهومة ولها معنى',
      'en': '',
    },
    'knhbttwy': {
      'ar': 'نعم',
      'en': '',
    },
    'ebimlrht': {
      'ar': 'قليلا',
      'en': '',
    },
    'effw4shu': {
      'ar': 'لا',
      'en': '',
    },
    '554wn4ap': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_C
  {
    'oq1dff5e': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '1vd0pq6k': {
      'ar': 'Home',
      'en': '',
    },
  },
  // UpdateUser
  {
    's97uas1p': {
      'ar': 'تعديل',
      'en': '',
    },
    'wi84h4im': {
      'ar': 'Field is required',
      'en': '',
    },
    '6puh4d0l': {
      'ar': 'Field is required',
      'en': '',
    },
    '2z0revqi': {
      'ar': 'Field is required',
      'en': '',
    },
    'hbiph5tt': {
      'ar': 'Field is required',
      'en': '',
    },
  },
  // Atividades_A
  {
    'xd96j5o5': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'k511lj6n': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_E
  {
    '7p6ogzql': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'va8b3bo4': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_D
  {
    'mururbpr': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'rxc99wr8': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_G
  {
    'aq2qbjss': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'wadzuzgm': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_B
  {
    '22tubei2': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'rt7zr0ei': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_F
  {
    'anwvmul4': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'totw9cxl': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_I
  {
    'i52lsr71': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '37l4kg8n': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_J
  {
    'y6f13cms': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'd391dpzb': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_h
  {
    't4ftdvic': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'ghkkf3ku': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_M
  {
    '3o0mvmua': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '7ymcig8s': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_O
  {
    'e2tfwbnm': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'c5676vx1': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_K
  {
    'pmtw1tiq': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '1ybiz8cj': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_L
  {
    'rmh6drlc': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'rnava099': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_P
  {
    '84a0w1qs': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '78i0ggj0': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_N
  {
    'hbj9lnz3': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'kpe768g8': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_Q
  {
    'zljea3t2': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'saljnnh8': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_R
  {
    'hcam7end': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'yk1mfyce': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_T
  {
    'uc9vl1m1': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '75srsr0a': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_S
  {
    '7aclihe8': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'b4ixw8iu': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_W
  {
    'i1bkjmuu': {
      'ar': 'الأبجدية',
      'en': '',
    },
    's6s1lvxq': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_V
  {
    'jgwk7y18': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '5yn0uogi': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_X
  {
    '7vdlfqm9': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '1bh4wgkq': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_Y
  {
    't2lefgu3': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'kqhvyims': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_Z
  {
    'tuul01lj': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'i0g7ang3': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number4
  {
    'ffon53uv': {
      'ar': 'الأرقام',
      'en': '',
    },
    '2989vlrf': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number0
  {
    '3uxzv2ej': {
      'ar': 'الأرقام',
      'en': '',
    },
    '0290jwje': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number2
  {
    'u94an67i': {
      'ar': 'الأرقام',
      'en': '',
    },
    'wu6zki01': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number3
  {
    'n7fyqmhf': {
      'ar': 'الأرقام',
      'en': '',
    },
    '754tyt2k': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number6
  {
    '8cmhanht': {
      'ar': 'الأرقام',
      'en': '',
    },
    'fh5yw27l': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number5
  {
    'iv3b1pjw': {
      'ar': 'الأرقام',
      'en': '',
    },
    '7tczizdo': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number7
  {
    'pgwzez2y': {
      'ar': 'الأرقام',
      'en': '',
    },
    'xgnc0a9t': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number8
  {
    '8ohawdjc': {
      'ar': 'الأرقام',
      'en': '',
    },
    'v3ga1p4p': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number1
  {
    'dzvawbt0': {
      'ar': 'الأرقام',
      'en': '',
    },
    'tz1v91o7': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number10
  {
    'g3hmh4i3': {
      'ar': 'الأرقام',
      'en': '',
    },
    '2dqw26aq': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Number9
  {
    'kphomwbm': {
      'ar': 'الأرقام',
      'en': '',
    },
    'dlp80lyd': {
      'ar': 'Home',
      'en': '',
    },
  },
  // ForgetPassword
  {
    'tgllok5z': {
      'ar':
          'أدخل عنوان البريد الإلكتروني المرتبط بحسابك وسنرسل لك رابطًا لإعادة تعيين كلمة المرور الخاصة بك',
      'en': '',
    },
    'jeysifsk': {
      'ar': 'أدخل بريدك الالكتروني',
      'en': '',
    },
    '0lyhx7xs': {
      'ar': 'ارسال',
      'en': '',
    },
    'yd1zdjuo': {
      'ar': 'Home',
      'en': '',
    },
  },
  // CheckYourEmail
  {
    'zbtgh65f': {
      'ar': 'Home',
      'en': '',
    },
  },
  // ActivitiesPage
  {
    '0fcwu45t': {
      'ar': 'الأنشطة',
      'en': '',
    },
    'zosybq61': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '0dc53v86': {
      'ar': 'يعمل على تطوير التنسيق الحركي ، والخطوط العريضة المرئية للحروف ',
      'en': '',
    },
    '87jyn4ej': {
      'ar': 'الأرقام',
      'en': '',
    },
    'j27lnf13': {
      'ar':
          'يعمل على إنشاء العلاقة بين العدد والكم والإدراك البصري وما إلى ذلك',
      'en': '',
    },
    'ge3jntwn': {
      'ar': 'الروتين ',
      'en': '',
    },
    'if3djq1m': {
      'ar':
          'يعمل على إنشاء العلاقة بين العدد والكم والإدراك البصري وما إلى ذلك',
      'en': '',
    },
    '98p70awb': {
      'ar': 'التعبيرات',
      'en': '',
    },
    'k2f6x592': {
      'ar':
          'يعمل على إنشاء العلاقة بين العدد والكم والإدراك البصري وما إلى ذلك',
      'en': '',
    },
    'uibxavxy': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'abkjbsti': {
      'ar':
          'يعمل على إنشاء العلاقة بين العدد والكم والإدراك البصري وما إلى ذلك',
      'en': '',
    },
    '7opmovb9': {
      'ar': 'المهن',
      'en': '',
    },
    'q56rzuoe': {
      'ar': 'يعمل على ادارك الواقع المعيشي ',
      'en': '',
    },
    'on4e6c1p': {
      'ar': 'الفواكهة',
      'en': '',
    },
    '45akr8zx': {
      'ar':
          'يعمل على إنشاء العلاقة بين العدد والكم والإدراك البصري وما إلى ذلك',
      'en': '',
    },
    'de1nswl9': {
      'ar': 'Home',
      'en': '',
    },
  },
  // HomePage
  {
    '62yx0am0': {
      'ar': 'الشاشة الرئيسية',
      'en': '',
    },
    'j5cvjvy4': {
      'ar': 'الأنشطة',
      'en': '',
    },
    'gvw9jax5': {
      'ar': 'الألعاب',
      'en': '',
    },
    'vkmecwi2': {
      'ar': 'الإعدادات',
      'en': '',
    },
    'qlaofbe1': {
      'ar': 'العلاج',
      'en': '',
    },
    'fyl6ecki': {
      'ar': ' الرئيسية',
      'en': '',
    },
  },
  // SettingPage
  {
    'imiaczy1': {
      'ar': 'الإعدادات',
      'en': '',
    },
    '4w4ifwvt': {
      'ar': 'اعدادات المظهر',
      'en': '',
    },
    'hajvdeq6': {
      'ar': 'خروج',
      'en': '',
    },
    '80mgsgtz': {
      'ar': 'الإعدادات',
      'en': '',
    },
  },
  // logPage
  {
    'e77gaey4': {
      'ar': 'Page Title',
      'en': '',
    },
    'czfc6bjh': {
      'ar': 'البريد',
      'en': '',
    },
    'i812l8jn': {
      'ar': 'ادخل بريدك هنا....................',
      'en': '',
    },
    'srdwvqow': {
      'ar': 'كلمة المرور',
      'en': '',
    },
    'ropa9yni': {
      'ar': 'ادخل كلمة السر هنا ....',
      'en': '',
    },
    'zhbnh1el': {
      'ar': 'دخول',
      'en': '',
    },
    'dpau59sz': {
      'ar': 'إنشاء حساب جديد',
      'en': '',
    },
    'zfjl8ex3': {
      'ar': 'Home',
      'en': '',
    },
  },
  // NewUser
  {
    't316zps7': {
      'ar': 'الاسم كاملا',
      'en': '',
    },
    'n74w2ail': {
      'ar': 'البريد الالكتروني',
      'en': '',
    },
    '92t728rk': {
      'ar': 'كلمة المرور',
      'en': '',
    },
    'u2nq1cix': {
      'ar': 'تاكيدد كلمة المرور',
      'en': '',
    },
    'sx1yomu2': {
      'ar': 'الجوال',
      'en': '',
    },
    'qkdyb2uj': {
      'ar': '',
      'en': '',
    },
    'w2pjt1v7': {
      'ar': 'العمر',
      'en': '',
    },
    '72jv453u': {
      'ar': '',
      'en': '',
    },
    '3hilphff': {
      'ar': 'الجنس',
      'en': '',
    },
    '8fmd3ujv': {
      'ar': 'ذكر',
      'en': '',
    },
    'gts7le5x': {
      'ar': 'انثى',
      'en': '',
    },
    'rvtlaiwi': {
      'ar': 'حفظ',
      'en': '',
    },
    '8b4sh846': {
      'ar': 'مستخدم جديد',
      'en': '',
    },
    'kfe529c6': {
      'ar': 'Home',
      'en': '',
    },
  },
  // AddressPage
  {
    'to4u4t35': {
      'ar': 'اختار الدولة',
      'en': '',
    },
    '5yf19vby': {
      'ar': 'الأردن',
      'en': '',
    },
    'acgy31wg': {
      'ar': 'سوريا',
      'en': '',
    },
    '9af7vfpv': {
      'ar': 'دولة أخرى',
      'en': '',
    },
    'aq92h37y': {
      'ar': 'المدينة',
      'en': '',
    },
    '1ts9blkb': {
      'ar': 'الشارع',
      'en': '',
    },
    'atr85ug0': {
      'ar': 'الرمز البريدي',
      'en': '',
    },
    'isvecrg6': {
      'ar': 'الحي - العنوان كاملا',
      'en': '',
    },
    '86pe3xt5': {
      'ar': 'حفظ',
      'en': '',
    },
    '3an8rull': {
      'ar': 'العنوان',
      'en': '',
    },
    'sx9seak3': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageTypeSex
  {
    '46kf7ymo': {
      'ar': 'اختيار الجنس',
      'en': '',
    },
    '3jqfrsn8': {
      'ar': 'حفظ',
      'en': '',
    },
    'i5xpa8ce': {
      'ar': 'Home',
      'en': '',
    },
  },
  // RoteenPage
  {
    'rxutwxut': {
      'ar': 'الروتين اليومي',
      'en': '',
    },
    '15i6omrk': {
      'ar': 'الاستيقاظ\nحان الوقت للاستيقاظ والحصول على يوم رائع',
      'en': '',
    },
    'hsrgiqeb': {
      'ar': 'حان الوقت لتنظيف أسنانك والحفاظ على صحة فمك',
      'en': '',
    },
    'g3o6sq8r': {
      'ar': 'حان وقت الاستحمام والحفاظ على نظافتك',
      'en': '',
    },
    '7xattk8d': {
      'ar': 'حان الوقت لتناول وجبة صحية وتغذية جيدة',
      'en': '',
    },
    'uzmf1o7e': {
      'ar': 'قم بعملك ، ولا تنس أن تغسل يديك',
      'en': '',
    },
    'bwy4xvbm': {
      'ar':
          'حان الوقت للاستعداد والذهاب إلى المدرسة لتعلم أشياء جديدة ومقابلة الأصدقاء',
      'en': '',
    },
    'b6j2zdvc': {
      'ar': 'حان الوقت لأداء واجبك',
      'en': '',
    },
    'wfgyxofq': {
      'ar': 'حان وقت اللعب ، استخدم طاقاتك واستمتع',
      'en': '',
    },
    'hkr42o44': {
      'ar': 'حان وقت اللعب ، استخدم طاقاتك واستمتع',
      'en': '',
    },
    '3pqh2y25': {
      'ar': 'حان وقت اللعب ، استخدم طاقاتك واستمتع',
      'en': '',
    },
    't8wpofx0': {
      'ar': 'اتوضأ للصلاة',
      'en': '',
    },
    '2z3azxju': {
      'ar': 'انا اجري',
      'en': '',
    },
    'nlbj0jh6': {
      'ar': 'انا ذاهب الى المدرسة',
      'en': '',
    },
    '14af4u68': {
      'ar': 'انا اراجع دروسي',
      'en': '',
    },
    'q219urgk': {
      'ar': 'انها تمطر',
      'en': '',
    },
    'dx4j8lwu': {
      'ar': 'انا اطبخ',
      'en': '',
    },
    'lv763zvm': {
      'ar': 'انا سعيد',
      'en': '',
    },
    'g9hwlnuz': {
      'ar': 'انا اقرأ',
      'en': '',
    },
    'a6vkzpd7': {
      'ar': 'انا اذاكر دروسي',
      'en': '',
    },
    'sdyt16a4': {
      'ar': 'حان وقت النوم ، واحصل على نوم جيد  لليوم التالي',
      'en': '',
    },
    'hp9vlkqj': {
      'ar': 'Home',
      'en': '',
    },
  },
  // ExpressionsPage
  {
    'u0tqi7c7': {
      'ar': 'التعبيرات',
      'en': '',
    },
    'fc717z3v': {
      'ar': 'سعيد',
      'en': '',
    },
    'pn6dlolk': {
      'ar':
          'ياي! أنا سعيد جداً!!!\nسأكون قادرًا على اللعب كثيرًا اليوم ، سيحضر أصدقائي ألعابهم لنا للعب معًا ، أنا سعيد جدًا وسعيد جدًا.',
      'en': '',
    },
    '92ssfpjy': {
      'ar': 'مشوش',
      'en': '',
    },
    'sbcomf4k': {
      'ar':
          'لا أفهم.\nلا أفهم ، أصدقائي الصغار يأخذون بعض الوقت للوصول ، هل وصلوا بالفعل؟',
      'en': '',
    },
    'ibw8qri6': {
      'ar': 'في شك',
      'en': '',
    },
    '9emgt74w': {
      'ar': 'لماذا لا تأتي الطيور معي؟ لماذا ؟\nاريده فلماذا لا يأتي معي؟',
      'en': '',
    },
    'fz8bsfsh': {
      'ar': 'أنا بخير',
      'en': '',
    },
    '0fij3udi': {
      'ar':
          'ذهبت اليوم للعب مع أصدقائي وانتهى بي الأمر بالسقوط ، لكنني أخبرت صديقي أنني بخير وأريد اللعب مرة أخرى.',
      'en': '',
    },
    '94o271o7': {
      'ar': 'سعيد',
      'en': '',
    },
    'yyqa7swa': {
      'ar':
          'أنا سعيد جدًا ، اليوم سوف أتناول طعامي المفضل ، أنا سعيد جدًا. أنا أحب أكل طعامي المفضل!',
      'en': '',
    },
    'm8zf4cor': {
      'ar': 'تعيس',
      'en': '',
    },
    'op91qmly': {
      'ar':
          'لست سعيدًا ، لقد طُلب مني أن أنام مبكرًا اليوم ولا أريد أن أنام الآن ، والآن أريد أن ألعب!',
      'en': '',
    },
    'ii4486x3': {
      'ar': 'حزين',
      'en': '',
    },
    's1ae0eor': {
      'ar':
          'أنا حزين جدًا ، إنه شعور لا أحب أن أشعر به وهذا يجعلني أرغب في البكاء.',
      'en': '',
    },
    '62bvop5r': {
      'ar': 'الغضب',
      'en': '',
    },
    'dj2ds78y': {
      'ar': 'أنا لا أعتقد! لماذا حدث هذا؟\nلم يعجبني وأنا الآن غاضب جدًا ،',
      'en': '',
    },
    '7si32kv9': {
      'ar': 'مندهش',
      'en': '',
    },
    'ekyx1tr6': {
      'ar': 'حدث شيء غير متوقع.',
      'en': '',
    },
    'jgogs1we': {
      'ar': 'Home',
      'en': '',
    },
  },
  // TreatmentPage
  {
    'e8sr8nxu': {
      'ar': 'الأعراض',
      'en': '',
    },
    'qan7kbum': {
      'ar': 'السلوكيات ',
      'en': '',
    },
    '5sptjqtp': {
      'ar': 'Home',
      'en': '',
    },
  },
  // BehavioursPage
  {
    '4j66ylkl': {
      'ar': 'السلوكيات',
      'en': '',
    },
    'b6x8moyp': {
      'ar': 'سلوك الرفرفة',
      'en': '',
    },
    'ieit9uwp': {
      'ar': 'سلوك الصراخ',
      'en': '',
    },
    'kieuv7wi': {
      'ar': 'سلوك عض اليد',
      'en': '',
    },
    'x1lq48tn': {
      'ar': 'سلوك العدوانية',
      'en': '',
    },
    'quxeokd7': {
      'ar': 'سلوك شد الشعر',
      'en': '',
    },
    'fswbktwh': {
      'ar': 'سلوك التكرارية والنمطية',
      'en': '',
    },
    '267mucuh': {
      'ar': 'Home',
      'en': '',
    },
  },
  // SymptomsPage
  {
    'r0jxcn07': {
      'ar': 'الأعراض',
      'en': '',
    },
    'lllzjnhp': {
      'ar': 'صعوبات سلوكية',
      'en': '',
    },
    '53v73jjq': {
      'ar': 'صعوبات في المهارات اللغوية',
      'en': '',
    },
    'gaxkrjsz': {
      'ar': 'صعوبات في العلاقات الاجتماعية',
      'en': '',
    },
    '6kr95dvu': {
      'ar': 'Home',
      'en': '',
    },
  },
  // SlociPage
  {
    'kfbseznt': {
      'ar':
          'يُنفذ حركات متكررة، مثل: الهزاز، أو الدوران في دوائر، أو التلويح باليدين  ',
      'en': '',
    },
    'e8rvoz6i': {
      'ar':
          'ينمّي عادات وطقوسًا يُكررها دائمًا                                                           ',
      'en': '',
    },
    '8dpfjmnh': {
      'ar':
          'يفقد سكينته لدى حصول أي تغير، حتى التغيير الأبسط أو الأصغر، في هذه العادات أو في الطقوس يكون دائم الحركة ',
      'en': '',
    },
    'aodm5cad': {
      'ar':
          'يصاب بالذهول والانبهار من أجزاء معينة من الأغراض، مثل: دوران عجل في سيارة لعبة ',
      'en': '',
    },
    'y554acm0': {
      'ar':
          'يعاني الأطفال صغيرو السن من صعوبات عندما يُطلب منهم مشاركة تجاربهم مع الآخرين  ',
      'en': '',
    },
    'td89skg3': {
      'ar':
          'يكون شديد الحساسية بشكل مبالغ فيه للضوء، أو للصوت، أو للمس، لكنه غير قادر على الإحساس بالألم',
      'en': '',
    },
    '0re5t8jw': {
      'ar': 'صعوبات سلوكية',
      'en': '',
    },
    'b8vicqa8': {
      'ar': 'Home',
      'en': '',
    },
  },
  // SlociPage1
  {
    'ca0a3ui7': {
      'ar':
          ' يبدأ الكلام في سن متأخرة مقارنة بالأطفال الآخرين                                               ',
      'en': '',
    },
    'yh9ok694': {
      'ar':
          'يفقد القدرة على قول كلمات أو جمل معينة كان يعرفها في السابق                                                   ',
      'en': '',
    },
    'cj4n9gmq': {
      'ar':
          'يقيم اتصالًا بصريًا حينما يريد شيئًا معين                                                   ',
      'en': '',
    },
    'y24y61re': {
      'ar':
          'يتحدث بصوت غريب و بنبرات وإيقاعات مختلفة، أو يتكلم باستعمال صوت غنائي، أو بصوت يشبه صوت الإنسان الآلي ',
      'en': '',
    },
    'pk10zr02': {
      'ar':
          'لا يستطيع المبادرة إلى محادثة أو الاستمرار في محادثة قائمة                                            ',
      'en': '',
    },
    'yudi03cx': {
      'ar':
          'قد يكرر كلمات، أو عبارات، أو مصطلحات لكنه لا يعرف كيفية استعمالها                ',
      'en': '',
    },
    '9wpju3db': {
      'ar': 'صعوبات في المهارات اللغوية',
      'en': '',
    },
    'z6qxih2b': {
      'ar': 'Home',
      'en': '',
    },
  },
  // SlociPage2
  {
    '8j9fisn1': {
      'ar':
          'لا يستجيب لمناداة اسمه                                                                                ',
      'en': '',
    },
    'ris5xpdm': {
      'ar':
          'لديه ضعف في الاتصال والتواصل البصريّ المباشر                                          ',
      'en': '',
    },
    'k59oy16x': {
      'ar':
          'يبدو أنه لا يسمع محدّثه                                                                                                ',
      'en': '',
    },
    'j33n7t5i': {
      'ar':
          'يُرفض العناق أو ينكمش على نفسه                                                                                             ',
      'en': '',
    },
    '9z9urdgi': {
      'ar':
          'يبدو أنه لا يُدرك مشاعر وأحاسيس الآخرين                                                                        ',
      'en': '',
    },
    '3b91snn8': {
      'ar':
          'يبدو أنه يُحب أن يلعب لوحده، ويتوقع في عالمه الشخص الخاص به                                                   ',
      'en': '',
    },
    'kqrlzkhu': {
      'ar':
          'لا يشير الي الاشياء                                                                                                                                        ',
      'en': '',
    },
    'qdphtezy': {
      'ar':
          'يفضل العب وحده                                                                                                                                         ',
      'en': '',
    },
    'yvom9maq': {
      'ar': 'صعوبات في العلاقات الاجتماعية والتفاعل',
      'en': '',
    },
    'o8ks3bx3': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageSloci
  {
    '932cagnu': {
      'ar':
          'واحد من أبرز العلامات التي تظهر على الأطفال ذوى الاحتياجات الخاصة، وهو عبارة عن سلوك حركي يقوم به الطفل عن طريق تحريك يديه وهزها بشكل مستمر أو وضع يديه على عيونه وصدره بشكل متكرر ويصاحب ذلك القفز وإصدار بعض الأصوات',
      'en': '',
    },
    'jw7w1el1': {
      'ar': 'علاج السلوك',
      'en': '',
    },
    'w1d4owmg': {
      'ar': 'سلوك الرفرفة',
      'en': '',
    },
    'cu04zthu': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageSloci1
  {
    'jc29pc5x': {
      'ar':
          'طبيعة مرض التوحد تجعل من الطفل أقل إدراكًا لطبيعة أو دلالة الصراخ فربما يكون من طقوسه التي اختار أن يؤديها بشكل متكرر، دون أن يدرك دلالتها. ولكن قبل البدء في تعديل سلوك الصراخ عند أطفال التوحد يجب أولاً بحث ما إذا كان هناك سبب للصراخ، أم أن هذا سلوك لديه',
      'en': '',
    },
    '5tnsu13k': {
      'ar': 'علاج السلوك',
      'en': '',
    },
    'b1lqx59t': {
      'ar': 'سلوك الصراخ',
      'en': '',
    },
    '1x0iinzm': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageSloci2
  {
    'h4sis2m3': {
      'ar':
          'هو ان يقوم الطفل بالعض على يده للتعبير عن القلق الخوف وعدم الارتياع من شيء ما قد يكون ازعجه مثل لأصوات والألوان والضوء والحركة',
      'en': '',
    },
    '1f7mg836': {
      'ar': 'علاج السلوك',
      'en': '',
    },
    'dhnq1bat': {
      'ar': 'سلوك عض اليد',
      'en': '',
    },
    'hg9b9g5h': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageSloci3
  {
    '5dssq807': {
      'ar': 'ضرب الأخرين والبصق عليهم والاعتداء عليهم وعلى الاطفال الاخرين',
      'en': '',
    },
    '1a70zsow': {
      'ar': 'علاج السلوك',
      'en': '',
    },
    '3es69sii': {
      'ar': 'سلوك العدوانية',
      'en': '',
    },
    'cdz7zti9': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageSloci4
  {
    'wsvec1os': {
      'ar':
          'شد الشعر ربما يكون نتيجة حب الأطفال لملمس الشعر وخاصة الشعر الطويل الناعم ولا يدرك الطفل وقتها إن شد الشعر من الممكن إن يؤلم الآخرين ويدرك فقط أنه وسيلة تواصل',
      'en': '',
    },
    'o156v1f2': {
      'ar': 'علاج السلوك',
      'en': '',
    },
    'hp0mcy9k': {
      'ar': 'سلوك شد الشعر',
      'en': '',
    },
    'nyfouz0a': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageSloci5
  {
    't0h5vc0f': {
      'ar':
          'تشمل سلوكيات اضطراب الحركة التكراري كل من ضرب الرأس والتلويح بالذراع، وهز اليد، والحركات الاهتزازية الإيقاعية، وعض الذات، وضرب النفس، وشك الجلد. كما تشمل أيضا مص الإبهام، قضم الأظافر ، صرير الأسنان والركض أو القفز غير الطبيعي',
      'en': '',
    },
    'c1lqs4qe': {
      'ar': 'علاج السلوك',
      'en': '',
    },
    'w455qw6l': {
      'ar': 'سلوك التكرارية والنمطية',
      'en': '',
    },
    'uknrmcdi': {
      'ar': 'Home',
      'en': '',
    },
  },
  // treatment1
  {
    '87usjy4a': {
      'ar':
          'وضع أوزان على اليدين لجلسة أو جلستين خلال اليوم ويعتمد ذلك على ظهور وتكرار السلوك الضغط على كرة اسفنجية الضغط على الطين والصلصال وضع اليدين معاً والضغط عليهما  تنظيم المدخلات الحسية البصرية المشي على اليدين',
      'en': '',
    },
    'ukngwh10': {
      'ar': 'علاج الرفرفة',
      'en': '',
    },
    'uou2uwzf': {
      'ar': 'Home',
      'en': '',
    },
  },
  // treatment2
  {
    'o6xz9q51': {
      'ar':
          'التجاهل وهي الخطوة الأولى لمحاولة علاج هذا السلوك. فعندما يستجيب الأبوان لسلوك الصراخ لدى الطفل، يبدأ تكوين خبرة عنده أنه وسيلة لفت الانتباه، ومن ثم سيتكرر استخدامها. ولكن التجاهل (الإطفاء) سيدرك معه الطفل بشكل تلقائي أن هذه الوسيلة غير مجدية',
      'en': '',
    },
    'c3ziribv': {
      'ar': 'علاج سلوك الصراخ',
      'en': '',
    },
    'xntqga2f': {
      'ar': 'Home',
      'en': '',
    },
  },
  // treatment3
  {
    'acg0o3i0': {
      'ar':
          'احضري للطفل صوره لطفل يعض وتكون واضحه وعليها علامة اكس بالأحمر ومكتوب تحتها لا تعض و ممكن تكون صورة الطفل نفسه صوره أخرى فيها صورة وجه حزين مكتوب تحتها أنا حزين أو أنا غاضب و عند رغبة الطفل بالعض ضعي امامه صورة لا تعض وقولي احمد لا تعض و ضعي صورة الوجه الحزين وقولي احمد لا تعض احمد حزين ويهدأ وينظر للصور',
      'en': '',
    },
    'hqlv6duh': {
      'ar': 'علاج عض اليد',
      'en': '',
    },
    'qxxsdtra': {
      'ar': 'Home',
      'en': '',
    },
  },
  // treatment4
  {
    '016tbcza': {
      'ar':
          'سلوك ضرب الآخرين يمثل وسيلة للتواصل والتعبير عن موقف لا يرغبه الطفل أو التعبير عن إحساس الإحباط أو الاضطراب وعدم الفهم. ونظرا لأن التواصل هو الهدف الأساسي للطفل التوحدي، لا ينبغي أن نقضى على تعبيره عن مشاعره ولكن لابد من تعليمه طريقة أفضل لتوصيل رسالته للآخرين وإذا استطاع الطفل إن يبتكر طريقة ما للإعلان عن رغباته فأن احتياجه للضرب سيتلاشى',
      'en': '',
    },
    'oge3jd0n': {
      'ar': 'علاج سلوك العدوانية',
      'en': '',
    },
    'ycsrgiqm': {
      'ar': 'Home',
      'en': '',
    },
  },
  // treatment5
  {
    'j0hwm3nt': {
      'ar':
          'ربط شعر المدرسة خلف ظهرها أثناء العمل مع الطفل وارتداء الحجاب كن على يقظة عند العمل مع الطفل وخاصة إذا كان جالسا على رجليك أو واقفا خلفك تعليم الطفل وسائل أخرى للتواصل المادي مثل التصفيق والدغدغة أو المداعبة باليد دون الإيذاء',
      'en': '',
    },
    'htiih03u': {
      'ar': 'علاج سلوك شد الشعر',
      'en': '',
    },
    'fmy6wb5o': {
      'ar': 'Home',
      'en': '',
    },
  },
  // treatment6
  {
    'gq4yu06h': {
      'ar':
          'ينم علاج السلوك التكراري النمطي من خلال اشغال الطفل بأية مهام او تدريبات خاصة التي تتركز على الايدين ويتم نغيير التدريب والوسائل كل 10 دقائق',
      'en': '',
    },
    'wvrq0795': {
      'ar': 'علاج السلوك التكراري النمطي',
      'en': '',
    },
    'lg4mi0hp': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageGems1
  {
    'ajzhjc76': {
      'ar': 'الألعاب',
      'en': '',
    },
    'y6hzwq88': {
      'ar': 'لعبة مملكلة الحيونات',
      'en': '',
    },
    '93cqpf4u': {
      'ar': 'لعبة كلاسيكية مكونة من ثلاثة مستويات.',
      'en': '',
    },
    '3wehw5if': {
      'ar': 'التناسب',
      'en': '',
    },
    'bjc5xso6': {
      'ar': 'لعبة كلاسيكية مكونة من قطع متناسبة مع بعضها ',
      'en': '',
    },
    '6thtoiuu': {
      'ar': 'Home',
      'en': '',
    },
  },
  // DeerPage
  {
    'd8qlev3r': {
      'ar': 'الحيوانات',
      'en': '',
    },
    '1trjhe3w': {
      'ar': 'السابق',
      'en': '',
    },
    'oj5l4ds1': {
      'ar': 'التالي',
      'en': '',
    },
    'xdrqvb0a': {
      'ar': 'Home',
      'en': '',
    },
  },
  // TigerPage
  {
    'tivj5erd': {
      'ar': 'الحيوانات',
      'en': '',
    },
    '1ziufgch': {
      'ar': 'السابق',
      'en': '',
    },
    'fxzog2g8': {
      'ar': 'التالي',
      'en': '',
    },
    'c2s872op': {
      'ar': 'Home',
      'en': '',
    },
  },
  // LionPage
  {
    '0imvy7id': {
      'ar': 'الحيوانات',
      'en': '',
    },
    '82isvlfy': {
      'ar': 'السابق',
      'en': '',
    },
    '72ze9z1d': {
      'ar': 'التالي',
      'en': '',
    },
    'qevj3mi7': {
      'ar': 'Home',
      'en': '',
    },
  },
  // ElephentPage
  {
    'ns262iab': {
      'ar': 'الحيوانات',
      'en': '',
    },
    '6vugmojh': {
      'ar': 'السابق',
      'en': '',
    },
    'jm2w1jfe': {
      'ar': 'التالي',
      'en': '',
    },
    'vbuaitll': {
      'ar': 'Home',
      'en': '',
    },
  },
  // BirdPage
  {
    '77d6uche': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'dqqwa80u': {
      'ar': 'السابق',
      'en': '',
    },
    'prw05s5a': {
      'ar': 'التالي',
      'en': '',
    },
    'p19svbam': {
      'ar': 'Home',
      'en': '',
    },
  },
  // ChickenPage
  {
    'pe51lgwf': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'eaaxn1xe': {
      'ar': 'السابق',
      'en': '',
    },
    '2oziwpji': {
      'ar': 'التالي',
      'en': '',
    },
    'ijq6tlvw': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PigPage
  {
    '1rx9v1ve': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'a8gexb65': {
      'ar': 'السابق',
      'en': '',
    },
    'jba09b0y': {
      'ar': 'التالي',
      'en': '',
    },
    '0365wj7j': {
      'ar': 'Home',
      'en': '',
    },
  },
  // SheepPage
  {
    'p141vpdf': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'l7eqaaiu': {
      'ar': 'السابق',
      'en': '',
    },
    'oqqxkr3k': {
      'ar': 'التالي',
      'en': '',
    },
    'wj77l9zs': {
      'ar': 'Home',
      'en': '',
    },
  },
  // CowPage
  {
    '36sg33sr': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'jtthncs9': {
      'ar': 'السابق',
      'en': '',
    },
    'n0jm2qy5': {
      'ar': 'التالي',
      'en': '',
    },
    'fclrl6hm': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Doge1Page
  {
    'g6kfyoxl': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'be1xnqkl': {
      'ar': 'السابق',
      'en': '',
    },
    '7hnviufk': {
      'ar': 'التالي',
      'en': '',
    },
    'png0s0xj': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Doge2Page
  {
    '08x7y8f7': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'xwlufq6j': {
      'ar': 'السابق',
      'en': '',
    },
    '23m61tzi': {
      'ar': 'التالي',
      'en': '',
    },
    'pcjdo989': {
      'ar': 'Home',
      'en': '',
    },
  },
  // CatPage
  {
    'ckmhxgem': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'hp7iot07': {
      'ar': 'السابق',
      'en': '',
    },
    '7tm2nnxw': {
      'ar': 'التالي',
      'en': '',
    },
    'yqzksdiu': {
      'ar': 'Home',
      'en': '',
    },
  },
  // MonkeyPage
  {
    'd930tnk6': {
      'ar': 'الحيوانات',
      'en': '',
    },
    '8e75pyq3': {
      'ar': 'السابق',
      'en': '',
    },
    'iawi798q': {
      'ar': 'التالي',
      'en': '',
    },
    'i54lb8nu': {
      'ar': 'Home',
      'en': '',
    },
  },
  // RabbitPage
  {
    'gadyrygc': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'cm30w46p': {
      'ar': 'السابق',
      'en': '',
    },
    'b0qx4rvl': {
      'ar': 'التالي',
      'en': '',
    },
    'c46rcn2p': {
      'ar': 'Home',
      'en': '',
    },
  },
  // FrogPage
  {
    '9nnzqsx3': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'xd2os51u': {
      'ar': 'السابق',
      'en': '',
    },
    'sjak0wga': {
      'ar': 'التالي',
      'en': '',
    },
    'npw44s1d': {
      'ar': 'Home',
      'en': '',
    },
  },
  // TurtlePage
  {
    'tw8x8itj': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'faumhyzj': {
      'ar': 'السابق',
      'en': '',
    },
    'dwjh4tsk': {
      'ar': 'التالي',
      'en': '',
    },
    'cogmhfku': {
      'ar': 'Home',
      'en': '',
    },
  },
  // FroogPage
  {
    'aoetssyh': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'vc63t07t': {
      'ar': 'السابق',
      'en': '',
    },
    'wbw7sprs': {
      'ar': 'التالي',
      'en': '',
    },
    'vnczk7dy': {
      'ar': 'Home',
      'en': '',
    },
  },
  // aDuckPage
  {
    'ee1nqi7z': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'up22wh4s': {
      'ar': 'السابق',
      'en': '',
    },
    '936nzebr': {
      'ar': 'التالي',
      'en': '',
    },
    '4ik74p7x': {
      'ar': 'Home',
      'en': '',
    },
  },
  // ButterflyPage
  {
    '1o9tji29': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'awy7j6bb': {
      'ar': 'السابق',
      'en': '',
    },
    '4avd6orx': {
      'ar': 'التالي',
      'en': '',
    },
    '9uapjcfp': {
      'ar': 'Home',
      'en': '',
    },
  },
  // DonkeyPage
  {
    '0euvq1a5': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'h8mdl5w5': {
      'ar': 'السابق',
      'en': '',
    },
    '5frq3fh5': {
      'ar': 'التالي',
      'en': '',
    },
    '1rktu8oy': {
      'ar': 'Home',
      'en': '',
    },
  },
  // HorsePage
  {
    'o1h3wqe0': {
      'ar': 'الحيوانات',
      'en': '',
    },
    '3tq2b75n': {
      'ar': 'السابق',
      'en': '',
    },
    '4egq39jp': {
      'ar': 'اكتمل',
      'en': '',
    },
    'tfp60cay': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageGems1Copy
  {
    '0yhgynbh': {
      'ar': 'ضع الصورة في مكانها الصحيح',
      'en': '',
    },
    'em123v1x': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Anmels11
  {
    'fjbwfrb0': {
      'ar': 'الحيوانات',
      'en': '',
    },
    'z8vabsav': {
      'ar': '',
      'en': '',
    },
  },
  // DoctorPage
  {
    'i3b4jc7l': {
      'ar': 'تسجيل أخصائي',
      'en': '',
    },
    'h8pj4bha': {
      'ar': 'الاسم كاملا',
      'en': '',
    },
    '3q7dkaml': {
      'ar': 'البريد الالكتروني',
      'en': '',
    },
    'gd90xpu4': {
      'ar': 'الجوال',
      'en': '',
    },
    'fsf48fyh': {
      'ar': '',
      'en': '',
    },
    '07wvf0mm': {
      'ar': 'العمر',
      'en': '',
    },
    'nc1yam4g': {
      'ar': '',
      'en': '',
    },
    'dxcqcq60': {
      'ar': 'الجنس',
      'en': '',
    },
    '2jxct5kj': {
      'ar': 'ذكر',
      'en': '',
    },
    'i75hdi4h': {
      'ar': 'انثى',
      'en': '',
    },
    '06x8a8p3': {
      'ar': 'التخصص',
      'en': '',
    },
    '97gukovp': {
      'ar': 'السيرة الذاتية',
      'en': '',
    },
    'bc4kmwpu': {
      'ar': 'حفظ',
      'en': '',
    },
    'w415foez': {
      'ar': 'Home',
      'en': '',
    },
  },
  // EditeProfile
  {
    'lg6k5sqz': {
      'ar': 'الهاتف',
      'en': '',
    },
    '3rdmnakf': {
      'ar': 'العمر',
      'en': '',
    },
    'zgq2getq': {
      'ar': '[Some hint text...]',
      'en': '',
    },
    'rsn4vydo': {
      'ar': 'الحالة',
      'en': '',
    },
    'phg2fllh': {
      'ar': 'تعديل',
      'en': '',
    },
  },
  // Teat1
  {
    '5wbic65a': {
      'ar': 'Page Title',
      'en': '',
    },
    'qj824i8u': {
      'ar': 'Home',
      'en': '',
    },
  },
  // ChildernOrDoctor
  {
    '38fz8xtv': {
      'ar': 'اخيار تسجيل مستخدم',
      'en': '',
    },
    '91c5kc1m': {
      'ar': 'Home',
      'en': '',
    },
  },
  // FruitPage
  {
    '49xgdg9j': {
      'ar': 'الفواكهة',
      'en': '',
    },
    'idujzo9g': {
      'ar': 'Home',
      'en': '',
    },
  },
  // GameRun
  {
    'gqkf0jmr': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    'tpgvozel': {
      'ar': 'اختر  الظل المشابه للصورة',
      'en': '',
    },
    '9mrxlbvl': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Gameonline
  {
    'wozrrr6k': {
      'ar': 'الالعاب',
      'en': '',
    },
    'sre9epio': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_alef
  {
    '25ik2an7': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '27s0vp5o': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_ba
  {
    'mjribt3n': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'x9i4ntt8': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_ta
  {
    'ge1302fn': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'z1j4zgp1': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_tha
  {
    'rutlznwb': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'hf77a7b3': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_gem
  {
    'n368nx37': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'lck8bzl8': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_hka
  {
    '0dzsehky': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'lonuewy7': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_kha
  {
    'wj5ix0vt': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'bstbe26s': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_dal
  {
    'l32aesa1': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '9r40ukx4': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_thal
  {
    'hn26clc8': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'leznur88': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_ra
  {
    'q4s9t25h': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'himmlqfu': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_zai
  {
    'wrjmwl3v': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '93u7cfhs': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_sen
  {
    'z60vz0xa': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'ift5zpwo': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_sheen
  {
    'pdaiogvb': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'd6xv1t0y': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_sad
  {
    't2t3tr8v': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '8xjtaq0k': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_dad
  {
    'actb2v5u': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'uz5khx7f': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_tta
  {
    'utqk615d': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'gc81x78m': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_dha
  {
    '7x88ip44': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'xd11he8p': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_ain
  {
    'rmx6blsv': {
      'ar': 'الأبجدية',
      'en': '',
    },
    '95orzas3': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_gain
  {
    'aah9xg2f': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'cxwllu6p': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_fa
  {
    'cqitmv05': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'sfnvc0wx': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_ghaf
  {
    'sknaymgc': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'hiqvyp7r': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_kaf
  {
    'onge8a4o': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'vrx9cwcb': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_lam
  {
    'ditrcsgs': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'hlrkfuwq': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_mem
  {
    'h62yoagy': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'i496qnaj': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_non
  {
    'm8am51xx': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'r50dlvqo': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_ha
  {
    'mfj7ky1d': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'wkzstink': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_waw
  {
    '23l8ff5z': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'ldu9ax9n': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Atividades_ya
  {
    '7kwbzyd9': {
      'ar': 'الأبجدية',
      'en': '',
    },
    'ana4p08l': {
      'ar': 'Home',
      'en': '',
    },
  },
  // tetchure
  {
    'vguhe31o': {
      'ar': 'السابق',
      'en': '',
    },
    'a4fpqn6x': {
      'ar': 'التالي',
      'en': '',
    },
    'qfemwgnl': {
      'ar': 'المهن',
      'en': '',
    },
    'qdfj6fku': {
      'ar': 'Home',
      'en': '',
    },
  },
  // doctor
  {
    'zfgzmhsw': {
      'ar': 'السابق',
      'en': '',
    },
    'yrgcmt5u': {
      'ar': 'التالي',
      'en': '',
    },
    'kdpw387h': {
      'ar': 'المهن',
      'en': '',
    },
    'at4plk5h': {
      'ar': 'Home',
      'en': '',
    },
  },
  // artist
  {
    'icnnimu1': {
      'ar': 'السابق',
      'en': '',
    },
    'xf9ymg6k': {
      'ar': 'التالي',
      'en': '',
    },
    'vo0oopc1': {
      'ar': 'المهن',
      'en': '',
    },
    'bs3x2aw7': {
      'ar': 'Home',
      'en': '',
    },
  },
  // a_cook
  {
    'g7yqiqy2': {
      'ar': 'السابق',
      'en': '',
    },
    'yygahq4i': {
      'ar': 'التالي',
      'en': '',
    },
    'hd1zkjrj': {
      'ar': 'المهن',
      'en': '',
    },
    's0bt08tx': {
      'ar': 'Home',
      'en': '',
    },
  },
  // driver
  {
    'l70yqbfq': {
      'ar': 'السابق',
      'en': '',
    },
    'h5z4bgpe': {
      'ar': 'التالي',
      'en': '',
    },
    's9zsbh2g': {
      'ar': 'المهن',
      'en': '',
    },
    'yizr78pb': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Engrining
  {
    'd28v1u5t': {
      'ar': 'السابق',
      'en': '',
    },
    '7w23k7t6': {
      'ar': 'التالي',
      'en': '',
    },
    'r0u4k8x5': {
      'ar': 'المهن',
      'en': '',
    },
    'of78zrmq': {
      'ar': 'Home',
      'en': '',
    },
  },
  // farms
  {
    'nx60q5zy': {
      'ar': 'السابق',
      'en': '',
    },
    '9rle5iez': {
      'ar': 'التالي',
      'en': '',
    },
    '1zgfpi2a': {
      'ar': 'المهن',
      'en': '',
    },
    'cvdy835c': {
      'ar': 'Home',
      'en': '',
    },
  },
  // policeman
  {
    'ai993tkg': {
      'ar': 'السابق',
      'en': '',
    },
    'is5ddxp0': {
      'ar': 'التالي',
      'en': '',
    },
    '4kbs0cup': {
      'ar': 'المهن',
      'en': '',
    },
    'ygkeqasb': {
      'ar': 'Home',
      'en': '',
    },
  },
  // pilot
  {
    'fdj8dlgd': {
      'ar': 'السابق',
      'en': '',
    },
    '3xinekm1': {
      'ar': 'التالي',
      'en': '',
    },
    'oczx22ei': {
      'ar': 'المهن',
      'en': '',
    },
    'x8b6arkk': {
      'ar': 'Home',
      'en': '',
    },
  },
  // scubaDiver
  {
    'dr6ck718': {
      'ar': 'السابق',
      'en': '',
    },
    'ce8h4l1v': {
      'ar': 'اكنمل',
      'en': '',
    },
    '2mghd33h': {
      'ar': 'المهن',
      'en': '',
    },
    'ebk3fvjg': {
      'ar': 'Home',
      'en': '',
    },
  },
  // test111
  {
    'u776826u': {
      'ar': 'Page Title',
      'en': '',
    },
    'zeggfqna': {
      'ar': 'Home',
      'en': '',
    },
  },
  // PageLetter
  {
    '6um9lze6': {
      'ar': 'اختر الأحرف العربية او  الانجليزية',
      'en': '',
    },
    'mgownxkf': {
      'ar': 'Home',
      'en': '',
    },
  },
  // GameRead
  {
    'c51ch9hk': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    'egffdrms': {
      'ar': 'اختر  الظل المشابه للصورة',
      'en': '',
    },
    'ms3zxfrr': {
      'ar': 'الف مبروك نتيجتك 10',
      'en': '',
    },
    'u4aw5x68': {
      'ar': 'Home',
      'en': '',
    },
  },
  // GameWears
  {
    'trjajw85': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    'jhuw30g6': {
      'ar': 'اختر  الظل المشابه للصورة',
      'en': '',
    },
    '2xcu2c0n': {
      'ar': 'الف مبروك نتيجتك 30',
      'en': '',
    },
    'ltj01rn1': {
      'ar': 'Home',
      'en': '',
    },
  },
  // GameStudy
  {
    'ws4rr47r': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    'd6uziuq8': {
      'ar': 'اختر  الظل المشابه للصورة',
      'en': '',
    },
    'qc1aym8t': {
      'ar': 'الف مبروك نتيجتك 40',
      'en': '',
    },
    'fmr6c1yz': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Gameflay
  {
    'vzk83re7': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    '0ylj1dtk': {
      'ar': 'اختر  الظل المشابه للصورة',
      'en': '',
    },
    'enpt8wbu': {
      'ar': 'الف مبروك نتيجتك 50',
      'en': '',
    },
    'ajxqufzi': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Gamepniaplle
  {
    'aladxppl': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    'mz57yn4i': {
      'ar': 'اختر  الظل المشابه للصورة',
      'en': '',
    },
    'bgoc3grc': {
      'ar': 'الف مبروك نتيجتك 70',
      'en': '',
    },
    '6kbcd8h5': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Gamewatermelon
  {
    'gkgp1wxy': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    '7tn2q1zr': {
      'ar': 'اختر  الظل المشابه للصورة',
      'en': '',
    },
    'kg5fwvzp': {
      'ar': 'الف مبروك نتيجتك 90',
      'en': '',
    },
    '5b6xkv0x': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Gamesecceusse
  {
    'poyj9mda': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    '5q68jlkg': {
      'ar': 'لقد فزت! ',
      'en': '',
    },
    'wfoogiv2': {
      'ar': 'الف مبروك نتيجتك 100',
      'en': '',
    },
    't2osbfao': {
      'ar': 'هل تريد اللعب مرة أخرى',
      'en': '',
    },
    '8nid857w': {
      'ar': 'اللعب مرة أخرى',
      'en': '',
    },
    'zfyc4d1a': {
      'ar': 'خروج',
      'en': '',
    },
    'god66v09': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Gamebnanas
  {
    'iku923j9': {
      'ar': 'اين ظلي؟',
      'en': '',
    },
    'lqmoibny': {
      'ar': 'اختر  الظل المشابه للصورة',
      'en': '',
    },
    'q96tog30': {
      'ar': 'الف مبروك نتيجتك 80',
      'en': '',
    },
    'lvjzxjo5': {
      'ar': 'Home',
      'en': '',
    },
  },
  // LogIn
  {
    '33wwi3r7': {
      'ar': 'تسجيل الدخول',
      'en': '',
    },
    'd1b4qrjn': {
      'ar': 'ادخل البريد الالكتروني',
      'en': '',
    },
    't4ba43t9': {
      'ar': 'ادخل الباسورد',
      'en': '',
    },
    'bph3v8e9': {
      'ar': 'الدخول',
      'en': '',
    },
    'bf9fhnxv': {
      'ar': 'تذكرني',
      'en': '',
    },
    'e64x3vax': {
      'ar': 'انشاء مستخدم جديد',
      'en': '',
    },
    'v71lpskd': {
      'ar': 'نسيت كلمة السر؟',
      'en': '',
    },
    '07fewc9y': {
      'ar': 'الدخول',
      'en': '',
    },
  },
  // ProfessionsPage
  {
    'irqmydsb': {
      'ar': 'المهن',
      'en': '',
    },
    '9a9vckz1': {
      'ar': 'Home',
      'en': '',
    },
  },
  // audioChatDemo
  {
    '910kgfpd': {
      'ar': 'Small message',
      'en': '',
    },
    '88ycevy3': {
      'ar':
          'This is a long message. The container  is limited to 70% max width and the text will start floating',
      'en': '',
    },
    's80r9iwe': {
      'ar': '25',
      'en': '',
    },
    'c3318v8a': {
      'ar': 'last seen recently',
      'en': '',
    },
    'n8jbh645': {
      'ar': 'Start typing',
      'en': '',
    },
    'a8030h90': {
      'ar': 'Home',
      'en': '',
    },
  },
  // FILE1
  {
    '1h6v2roc': {
      'ar': 'Page Title',
      'en': '',
    },
    'mq2oz4h4': {
      'ar': 'Home',
      'en': '',
    },
  },
  // save
  {
    'd75tfsgv': {
      'ar': 'حفظ',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'nhs8hf7h': {
      'ar': '',
      'en': '',
    },
    'r7o27qga': {
      'ar': '',
      'en': '',
    },
    '358uohor': {
      'ar': '',
      'en': '',
    },
    'n3x59e15': {
      'ar':
          'in order to upload data, this app requires permission to access the Calenser',
      'en': '',
    },
    'dkfj159f': {
      'ar':
          'in order to upload data, this app requires permission to access the Biometrics',
      'en': '',
    },
    '0tlcnlln': {
      'ar':
          'in order to upload data, this app requires permission to access the Bluetooth',
      'en': '',
    },
    'fvd15g3j': {
      'ar':
          'in order to upload data, this app requires permission to access the Contacts',
      'en': '',
    },
    'cs8t1gak': {
      'ar':
          'in order to upload data, this app requires permission to access the Microphone',
      'en': '',
    },
    'o3v73znn': {
      'ar':
          'in order to upload data, this app requires permission to access the Notification',
      'en': '',
    },
    'tvogga6d': {
      'ar': '',
      'en': '',
    },
    'd94on39e': {
      'ar': '',
      'en': '',
    },
    'p3c9bjdj': {
      'ar': '',
      'en': '',
    },
    '9n9326vd': {
      'ar': '',
      'en': '',
    },
    '1nzz1aii': {
      'ar': '',
      'en': '',
    },
    '1ta1oj8a': {
      'ar': '',
      'en': '',
    },
    '5z2li4l5': {
      'ar': '',
      'en': '',
    },
    '8k3k0def': {
      'ar': '',
      'en': '',
    },
    'wxmiplp0': {
      'ar': '',
      'en': '',
    },
    '8s3nnq5h': {
      'ar': '',
      'en': '',
    },
    '68l0g3if': {
      'ar': '',
      'en': '',
    },
    'ddw65ypc': {
      'ar': '',
      'en': '',
    },
    '7gm1ji1s': {
      'ar': '',
      'en': '',
    },
    '0xzt14gr': {
      'ar': '',
      'en': '',
    },
    '5kz4nica': {
      'ar': '',
      'en': '',
    },
    '8ycb57l8': {
      'ar': '',
      'en': '',
    },
    '21ire5la': {
      'ar': '',
      'en': '',
    },
    'f6fq98eq': {
      'ar': '',
      'en': '',
    },
    '1v57hqwn': {
      'ar': '',
      'en': '',
    },
    '4yi07qa5': {
      'ar': '',
      'en': '',
    },
    '20u1pftj': {
      'ar': '',
      'en': '',
    },
    '4npzcoyf': {
      'ar': '',
      'en': '',
    },
    'j3ng8878': {
      'ar': '',
      'en': '',
    },
    'kpuo1ion': {
      'ar': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
