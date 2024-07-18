/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 424 (212 per locale)
///
/// Built on 2024-07-18 at 09:03 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	zhCn(languageCode: 'zh', countryCode: 'CN', build: _StringsZhCn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	String get locale => 'English';
	String get appName => 'FlowFerry';
	late final _StringsGeneralEn general = _StringsGeneralEn._(_root);
	late final _StringsLandingPageEn landingPage = _StringsLandingPageEn._(_root);
	late final _StringsHomeTabEn homeTab = _StringsHomeTabEn._(_root);
	late final _StringsLibraryTabEn libraryTab = _StringsLibraryTabEn._(_root);
	late final _StringsArticleDetailPageEn articleDetailPage = _StringsArticleDetailPageEn._(_root);
	late final _StringsMoreTabEn moreTab = _StringsMoreTabEn._(_root);
	late final _StringsSettingsPageEn settingsPage = _StringsSettingsPageEn._(_root);
	late final _StringsAboutPageEn aboutPage = _StringsAboutPageEn._(_root);
	late final _StringsFeedbackPageEn feedbackPage = _StringsFeedbackPageEn._(_root);
	late final _StringsLocalExportPageEn localExportPage = _StringsLocalExportPageEn._(_root);
	late final _StringsDialogEn dialog = _StringsDialogEn._(_root);
	late final _StringsSyncPageEn syncPage = _StringsSyncPageEn._(_root);
	late final _StringsLoginPageEn loginPage = _StringsLoginPageEn._(_root);
	late final _StringsSignupPageEn signupPage = _StringsSignupPageEn._(_root);
	late final _StringsSubscriptionPageEn subscriptionPage = _StringsSubscriptionPageEn._(_root);
	late final _StringsAccountDetailPageEn accountDetailPage = _StringsAccountDetailPageEn._(_root);
	late final _StringsLinksEn links = _StringsLinksEn._(_root);
	late final _StringsErrorsEn errors = _StringsErrorsEn._(_root);
}

// Path: general
class _StringsGeneralEn {
	_StringsGeneralEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get add => 'Add';
	String get advanced => 'Advanced';
	String get cancel => 'Cancel';
	String get close => 'Close';
	String get confirm => 'Confirm';
	String get continueStr => 'Continue';
	String get copy => 'Copy';
	String get decline => 'Decline';
	String get delete => 'Delete';
	String get done => 'Done';
	String get edit => 'Edit';
	String get email => 'Email';
	String get error => 'Error';
	String get example => 'Example';
	String get finished => 'Finished';
	String get hide => 'Hide';
	String get off => 'Off';
	String get on => 'On';
	String get open => 'Open';
	String get password => 'Password';
	String get reset => 'Reset';
	String get settings => 'Settings';
	String get start => 'Start';
	String get stop => 'Stop';
	String get save => 'Save';
	String get unchanged => 'Unchanged';
	String get unknown => 'Unknown';
}

// Path: landingPage
class _StringsLandingPageEn {
	_StringsLandingPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsLandingPageWelcomeScreenEn welcomeScreen = _StringsLandingPageWelcomeScreenEn._(_root);
	late final _StringsLandingPageFeaturesScreenEn featuresScreen = _StringsLandingPageFeaturesScreenEn._(_root);
	late final _StringsLandingPageProTipScreenEn proTipScreen = _StringsLandingPageProTipScreenEn._(_root);
}

// Path: homeTab
class _StringsHomeTabEn {
	_StringsHomeTabEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get tabName => 'Home';
	String get title => 'I Didn\'t...';
	String get sendBtn => 'Save';
	String get inputHit => 'Enter URL Here';
	late final _StringsHomeTabStatusEn status = _StringsHomeTabStatusEn._(_root);
}

// Path: libraryTab
class _StringsLibraryTabEn {
	_StringsLibraryTabEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get tabName => 'Library';
	String get title => 'Statistic';
	String get readTab => 'Read';
	String get unReadTab => 'Unread';
	String get clear => 'Clear All...';
	String get emptyHint => 'No Articles Here Yet';
	String count({required Object number}) => 'Total Articles: ${number}';
	late final _StringsLibraryTabPromptsEn prompts = _StringsLibraryTabPromptsEn._(_root);
	String get dataCollectionConsent => 'Your data will never sent to our server. You can use third-party provider to sync your data.';
}

// Path: articleDetailPage
class _StringsArticleDetailPageEn {
	_StringsArticleDetailPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsArticleDetailPageStatusEn status = _StringsArticleDetailPageStatusEn._(_root);
}

// Path: moreTab
class _StringsMoreTabEn {
	_StringsMoreTabEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get tabName => 'More';
	String get title => 'Settings';
	String get settings => 'Settings';
	String get data => 'Backup & Sync';
	String get account => 'YGeeker Account';
	String get feedback => 'Feedback';
	String get rate => 'Rate our app';
	String get share => 'Share FlowFerry';
	String get about => 'About';
}

// Path: settingsPage
class _StringsSettingsPageEn {
	_StringsSettingsPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	String get notSet => 'Not Set';
	String get learnMore => 'Learn More...';
	late final _StringsSettingsPageGeneralSettingsEn generalSettings = _StringsSettingsPageGeneralSettingsEn._(_root);
	late final _StringsSettingsPageCloudSettingsEn cloudSettings = _StringsSettingsPageCloudSettingsEn._(_root);
	late final _StringsSettingsPageNotionSettingsEn notionSettings = _StringsSettingsPageNotionSettingsEn._(_root);
	late final _StringsSettingsPageGithubSettingsEn githubSettings = _StringsSettingsPageGithubSettingsEn._(_root);
}

// Path: aboutPage
class _StringsAboutPageEn {
	_StringsAboutPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'About';
	String get tagline => 'Designed and Created by';
	String get author => 'Rene Wang';
	String get more => 'More Hand-crafted Apps & Games';
	String get checkIntroduction => 'Check Introduction Again';
	late final _StringsAboutPageLetterEn letter = _StringsAboutPageLetterEn._(_root);
	late final _StringsAboutPageYgeekerEn ygeeker = _StringsAboutPageYgeekerEn._(_root);
	List<dynamic> get products => [
		_StringsAboutPage$products$0i0$En._(_root),
		_StringsAboutPage$products$0i1$En._(_root),
		_StringsAboutPage$products$0i2$En._(_root),
	];
}

// Path: feedbackPage
class _StringsFeedbackPageEn {
	_StringsFeedbackPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Feedback';
	String get sendBtn => 'Send Feedback';
	String get successPrompt => 'Thanks for your contribution!';
	String get errorPrompt => 'Submission failed, try send an email to me in about page.';
	String get contact => 'How can we contact you? (Optional)';
	String get contentPlaceholder => 'Write anything to us!';
	String get contentTitle => 'Content';
}

// Path: localExportPage
class _StringsLocalExportPageEn {
	_StringsLocalExportPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Export File';
}

// Path: dialog
class _StringsDialogEn {
	_StringsDialogEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsDialogContactEn contact = _StringsDialogContactEn._(_root);
}

// Path: syncPage
class _StringsSyncPageEn {
	_StringsSyncPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Sync';
	String get icloudSync => 'iCloud Sync';
	String get webdavSync => 'WebDAV Sync';
	String get webdavConfiguration => 'WebDAV Configuration';
	String get uploadToIcloud => 'Upload to iCloud';
	String get downloadFromIcloud => 'Download from iCloud';
	String get uploadToWebdav => 'Upload to WebDAV';
	String get downloadFromWebdav => 'Download from WebDAV';
	String get uploading => 'Uploading...';
	String get downloading => 'Downloading...';
	String get uploadSuccess => 'Upload successful';
	String get downloadSuccess => 'Download successful';
	String uploadError({required Object error}) => 'Upload failed: ${error}';
	String downloadError({required Object error}) => 'Download failed: ${error}';
	String get webdavUrl => 'WebDAV URL';
	String get webdavUsername => 'WebDAV Username';
	String get webdavPassword => 'WebDAV Password';
	String get saveWebdavCredentials => 'Save WebDAV Credentials';
	String get webdavCredentialsNotSet => 'WebDAV credentials are not set';
	String get success => 'Success';
	String get error => 'Error';
	String get ok => 'OK';
}

// Path: loginPage
class _StringsLoginPageEn {
	_StringsLoginPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '登录';
	String get noAccount => '我没有帐户';
	String get forget => '我忘记了密码';
	String get passwordValid => '请输入你的密码';
	String get emailValid => '请输入你的电子邮件';
	String get errorPrefix => '登录失败：';
}

// Path: signupPage
class _StringsSignupPageEn {
	_StringsSignupPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => '注册';
	String get passwordConfirm => '确认密码';
	String get passwordConfirmValid => '请确认你的密码';
	String get haveAccount => '我已经有一个帐户';
	String get notMatch => '密码不匹配';
	String get errorPrefix => '注册失败：';
}

// Path: subscriptionPage
class _StringsSubscriptionPageEn {
	_StringsSubscriptionPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Membership';
	String get restore => 'Restore Purchase';
	String get useKey => 'Use Activation Key';
	late final _StringsSubscriptionPagePlanEn plan = _StringsSubscriptionPagePlanEn._(_root);
	late final _StringsSubscriptionPagePurchaseKeyEn purchaseKey = _StringsSubscriptionPagePurchaseKeyEn._(_root);
	String get loginHint => 'For your peace of mind, logging in before purchasing a membership ensures that your payment is correctly allocated to your account. It also safeguards your membership privileges against any unexpected loss.';
	String get introTitle => 'Record Faster, Learn Faster.';
	String get introBody => 'Our mission is to bring everyone better education resource. While basic plan can meet most leaner\'s demand, you can try TalkReel Plus to gain a better, faster learning experience, and 8 special features.';
	late final _StringsSubscriptionPageFeaturesEn features = _StringsSubscriptionPageFeaturesEn._(_root);
	late final _StringsSubscriptionPageRedeemEn redeem = _StringsSubscriptionPageRedeemEn._(_root);
	String get unlimited => 'Unlimited';
	String get alreadyPurchasedHint => 'You are already a Plus member.';
	late final _StringsSubscriptionPagePurchaseHintEn purchaseHint = _StringsSubscriptionPagePurchaseHintEn._(_root);
}

// Path: accountDetailPage
class _StringsAccountDetailPageEn {
	_StringsAccountDetailPageEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Account';
	late final _StringsAccountDetailPageInfoEn info = _StringsAccountDetailPageInfoEn._(_root);
	late final _StringsAccountDetailPagePasswordEn password = _StringsAccountDetailPagePasswordEn._(_root);
}

// Path: links
class _StringsLinksEn {
	_StringsLinksEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get root => 'https://www.ygeeker.com/support/flowferry';
	String get privacy => '/legal/privacy';
	String get tips => '/intro';
	String get term => '/legal/term-of-use';
	String get ted => '/tutorial-basics/import-from-ted';
	String get githubTutorial => '/tutorial-basics/import-from-wechat';
	String get notionTutorial => '/tutorial-basics/import-from-wechat';
	String get purchaseKey => '/tutorial-extras/purchase_product_key';
	String get ygeeker => 'https://www.ygeeker.com';
}

// Path: errors
class _StringsErrorsEn {
	_StringsErrorsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get notionNotConfigured => 'Notion Not Configured';
}

// Path: landingPage.welcomeScreen
class _StringsLandingPageWelcomeScreenEn {
	_StringsLandingPageWelcomeScreenEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome to FlowFerry';
	String get subtitle => 'Own the content on the Internet, truely.';
	String get nextButton => 'Next';
}

// Path: landingPage.featuresScreen
class _StringsLandingPageFeaturesScreenEn {
	_StringsLandingPageFeaturesScreenEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'See what FlowFerry can do for you';
	late final _StringsLandingPageFeaturesScreenFeaturesEn features = _StringsLandingPageFeaturesScreenFeaturesEn._(_root);
	String get nextButton => 'Next';
}

// Path: landingPage.proTipScreen
class _StringsLandingPageProTipScreenEn {
	_StringsLandingPageProTipScreenEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Pro Tip';
	String get description => 'Share URLs directly to FlowFerry for quick archiving';
	String get getStartedButton => 'Get Started';
}

// Path: homeTab.status
class _StringsHomeTabStatusEn {
	_StringsHomeTabStatusEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get failed => 'Send Failed';
	String sending({required Object destination}) => 'Sending to ${destination}...';
	String get fetchingContent => 'Fetching Content...';
	String get fetchingImage => 'Fetching Images...';
}

// Path: libraryTab.prompts
class _StringsLibraryTabPromptsEn {
	_StringsLibraryTabPromptsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String read({required Object title}) => 'Mark as read: ${title}';
	String unread({required Object title}) => 'Mark as unread: ${title}';
	String deleted({required Object title}) => 'Deleted: ${title}';
}

// Path: articleDetailPage.status
class _StringsArticleDetailPageStatusEn {
	_StringsArticleDetailPageStatusEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String sendFailed({required Object error}) => 'Sending Failed: ${error}';
}

// Path: settingsPage.generalSettings
class _StringsSettingsPageGeneralSettingsEn {
	_StringsSettingsPageGeneralSettingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'General Settings';
	String get colorMode => 'Color Mode';
	String get saveImage => 'Save Image';
	String get langauge => 'Language';
}

// Path: settingsPage.cloudSettings
class _StringsSettingsPageCloudSettingsEn {
	_StringsSettingsPageCloudSettingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Cloud Service Settings';
	String get help => '';
}

// Path: settingsPage.notionSettings
class _StringsSettingsPageNotionSettingsEn {
	_StringsSettingsPageNotionSettingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Notion Settings';
	String get integrationKey => 'Integration Key';
	String get databaseId => 'Database ID';
	String get help => 'Go to Notion and get the key and ID. ';
}

// Path: settingsPage.githubSettings
class _StringsSettingsPageGithubSettingsEn {
	_StringsSettingsPageGithubSettingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'GitHub Settings';
	String get token => 'Access Token';
	String get owner => 'Username';
	String get repo => 'Repo Name';
	String get help => 'Choose a GitHub repo to store your content. ';
}

// Path: aboutPage.letter
class _StringsAboutPageLetterEn {
	_StringsAboutPageLetterEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'A Letter From Us';
}

// Path: aboutPage.ygeeker
class _StringsAboutPageYgeekerEn {
	_StringsAboutPageYgeekerEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'YGeeker';
	String get subtitle => 'A Work From';
	String get body => 'We are young startup building amazing stuffs. We make things with love, and only earn essentials to run our business. We have a limited size but an unlimited creativity.';
	String get learnMore => 'Learn more about us...';
}

// Path: aboutPage.products.0
class _StringsAboutPage$products$0i0$En {
	_StringsAboutPage$products$0i0$En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Geekits';
	String get description => 'Feature-rich Toolbox';
	String get url => 'https://geekits.ygeeker.com';
	String get icon => 'assets/icons/products/geekits.png';
}

// Path: aboutPage.products.1
class _StringsAboutPage$products$0i1$En {
	_StringsAboutPage$products$0i1$En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get name => 'ClipMemo';
	String get description => 'Your Media Notebook';
	String get url => 'https://www.ygeeker.com/product/clipmemo';
	String get icon => 'assets/icons/products/clipmemo.png';
}

// Path: aboutPage.products.2
class _StringsAboutPage$products$0i2$En {
	_StringsAboutPage$products$0i2$En._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Currates';
	String get description => 'Convert the currency appeared on webpage simply by selecting them.';
	String get url => 'https://github.com/RiverTwilight/Currates';
	String get icon => 'assets/icons/products/currates.png';
}

// Path: dialog.contact
class _StringsDialogContactEn {
	_StringsDialogContactEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get replayTime => 'You\'ll get a reply in 2 business days';
	String get wechat => 'WeChat';
	String get red => 'RED';
	String get wechatCopied => 'WeChat ID copied';
	String get redCopied => 'RED ID copied';
	String get emailCopied => 'Email address copied';
}

// Path: subscriptionPage.plan
class _StringsSubscriptionPagePlanEn {
	_StringsSubscriptionPagePlanEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Choose Your Plan';
	String get monthly => '30 Days';
	String get yearly => '1 Year';
	String get lifetime => 'Lifetime';
	String dailyPrice({required Object price}) => '${price}/Day';
}

// Path: subscriptionPage.purchaseKey
class _StringsSubscriptionPagePurchaseKeyEn {
	_StringsSubscriptionPagePurchaseKeyEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Purchase a Activation Key';
	String get purchaseBtn => 'Purchase';
	String get alipay => 'Buy through Alipay';
	String get taobao => 'Buy through Taobao.com';
	String get inputHint => 'Enter the product key';
}

// Path: subscriptionPage.features
class _StringsSubscriptionPageFeaturesEn {
	_StringsSubscriptionPageFeaturesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get cloudSync => 'Cloud sync';
	String get note => 'Note';
	String get review => 'Daily Review';
	String get tag => 'Tag System';
	String get bookmark => 'Bookmark';
	String get transcribe => 'Auto Transcribe';
	String get speed => 'Playback Speed';
	String get media => 'Media';
	String get loop => 'Loop';
	String get theme => 'Theme Color';
}

// Path: subscriptionPage.redeem
class _StringsSubscriptionPageRedeemEn {
	_StringsSubscriptionPageRedeemEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Redeem';
	String get dialogTitle => 'Redeem Offer Code';
	String get inputHint => 'Enter the promo code';
	String get redeemSuccessHint => 'Redeem Successfully.';
	String get redeemSuccessHintWeb => 'Redeem Successfully. You can open ClipMemo app now.';
}

// Path: subscriptionPage.purchaseHint
class _StringsSubscriptionPagePurchaseHintEn {
	_StringsSubscriptionPagePurchaseHintEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get beforePolicy => 'Please check our ';
	String get policy => 'policy';
	String get afterPolicy => ' before purchasing. If you didn\'t receive your purchase, please ';
	String get contact => 'contact us';
	String get afterContact => ' at here.';
}

// Path: accountDetailPage.info
class _StringsAccountDetailPageInfoEn {
	_StringsAccountDetailPageInfoEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Info';
}

// Path: accountDetailPage.password
class _StringsAccountDetailPagePasswordEn {
	_StringsAccountDetailPagePasswordEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get oldPwd => 'Old Password';
	String get newPwd => 'New Password';
}

// Path: landingPage.featuresScreen.features
class _StringsLandingPageFeaturesScreenFeaturesEn {
	_StringsLandingPageFeaturesScreenFeaturesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferEn preserveAndTransfer = _StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferEn._(_root);
	late final _StringsLandingPageFeaturesScreenFeaturesExportFlexibilityEn exportFlexibility = _StringsLandingPageFeaturesScreenFeaturesExportFlexibilityEn._(_root);
	late final _StringsLandingPageFeaturesScreenFeaturesElegantReadingEn elegantReading = _StringsLandingPageFeaturesScreenFeaturesElegantReadingEn._(_root);
}

// Path: landingPage.featuresScreen.features.preserveAndTransfer
class _StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferEn {
	_StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Preserve and Transfer';
	String get description => 'Save web pages offline and seamlessly integrate with your digital garden.';
}

// Path: landingPage.featuresScreen.features.exportFlexibility
class _StringsLandingPageFeaturesScreenFeaturesExportFlexibilityEn {
	_StringsLandingPageFeaturesScreenFeaturesExportFlexibilityEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Export Flexibility';
	String get description => 'Export content to Notion, Google Drive, OneDrive, PDF, HTML, and Markdown.';
}

// Path: landingPage.featuresScreen.features.elegantReading
class _StringsLandingPageFeaturesScreenFeaturesElegantReadingEn {
	_StringsLandingPageFeaturesScreenFeaturesElegantReadingEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Elegant Reading Experience';
	String get description => 'Enjoy a meticulously designed offline reading interface.';
}

// Path: <root>
class _StringsZhCn implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZhCn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsZhCn _root = this; // ignore: unused_field

	// Translations
	@override String get locale => '简体中文';
	@override String get appName => 'FlowFerry';
	@override late final _StringsGeneralZhCn general = _StringsGeneralZhCn._(_root);
	@override late final _StringsLandingPageZhCn landingPage = _StringsLandingPageZhCn._(_root);
	@override late final _StringsHomeTabZhCn homeTab = _StringsHomeTabZhCn._(_root);
	@override late final _StringsLibraryTabZhCn libraryTab = _StringsLibraryTabZhCn._(_root);
	@override late final _StringsArticleDetailPageZhCn articleDetailPage = _StringsArticleDetailPageZhCn._(_root);
	@override late final _StringsMoreTabZhCn moreTab = _StringsMoreTabZhCn._(_root);
	@override late final _StringsSettingsPageZhCn settingsPage = _StringsSettingsPageZhCn._(_root);
	@override late final _StringsAboutPageZhCn aboutPage = _StringsAboutPageZhCn._(_root);
	@override late final _StringsFeedbackPageZhCn feedbackPage = _StringsFeedbackPageZhCn._(_root);
	@override late final _StringsLocalExportPageZhCn localExportPage = _StringsLocalExportPageZhCn._(_root);
	@override late final _StringsDialogZhCn dialog = _StringsDialogZhCn._(_root);
	@override late final _StringsSyncPageZhCn syncPage = _StringsSyncPageZhCn._(_root);
	@override late final _StringsLoginPageZhCn loginPage = _StringsLoginPageZhCn._(_root);
	@override late final _StringsSignupPageZhCn signupPage = _StringsSignupPageZhCn._(_root);
	@override late final _StringsSubscriptionPageZhCn subscriptionPage = _StringsSubscriptionPageZhCn._(_root);
	@override late final _StringsAccountDetailPageZhCn accountDetailPage = _StringsAccountDetailPageZhCn._(_root);
	@override late final _StringsLinksZhCn links = _StringsLinksZhCn._(_root);
	@override late final _StringsErrorsZhCn errors = _StringsErrorsZhCn._(_root);
}

// Path: general
class _StringsGeneralZhCn implements _StringsGeneralEn {
	_StringsGeneralZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get add => '添加';
	@override String get advanced => '高级';
	@override String get cancel => '取消';
	@override String get close => '关闭';
	@override String get confirm => '确认';
	@override String get continueStr => '继续';
	@override String get copy => '复制';
	@override String get delete => '删除';
	@override String get decline => '拒绝';
	@override String get done => '完成';
	@override String get edit => '编辑';
	@override String get email => '电子邮件';
	@override String get error => '错误';
	@override String get example => '示例';
	@override String get finished => '已完成';
	@override String get hide => '隐藏';
	@override String get off => '关';
	@override String get on => '开';
	@override String get open => '打开';
	@override String get password => '密码';
	@override String get reset => '重置';
	@override String get settings => '设置';
	@override String get start => '开始';
	@override String get stop => '停止';
	@override String get save => '保存';
	@override String get unchanged => '未更改';
	@override String get unknown => '未知';
}

// Path: landingPage
class _StringsLandingPageZhCn implements _StringsLandingPageEn {
	_StringsLandingPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsLandingPageWelcomeScreenZhCn welcomeScreen = _StringsLandingPageWelcomeScreenZhCn._(_root);
	@override late final _StringsLandingPageFeaturesScreenZhCn featuresScreen = _StringsLandingPageFeaturesScreenZhCn._(_root);
	@override late final _StringsLandingPageProTipScreenZhCn proTipScreen = _StringsLandingPageProTipScreenZhCn._(_root);
}

// Path: homeTab
class _StringsHomeTabZhCn implements _StringsHomeTabEn {
	_StringsHomeTabZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get tabName => '首页';
	@override String get title => 'I Didn\'t...';
	@override String get sendBtn => '保存';
	@override String get inputHit => '文章链接';
	@override late final _StringsHomeTabStatusZhCn status = _StringsHomeTabStatusZhCn._(_root);
}

// Path: libraryTab
class _StringsLibraryTabZhCn implements _StringsLibraryTabEn {
	_StringsLibraryTabZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get tabName => '内容库';
	@override String get title => 'Statistic';
	@override String get readTab => '已读';
	@override String get unReadTab => '未读';
	@override String get clear => '清除全部...';
	@override String get emptyHint => '这里还没有文章';
	@override String count({required Object number}) => '总计 ${number} 篇文章';
	@override late final _StringsLibraryTabPromptsZhCn prompts = _StringsLibraryTabPromptsZhCn._(_root);
	@override String get dataCollectionConsent => '你的数据仅仅保存在你的设备上，你可以使用第三方服务进行多端数据同步。';
}

// Path: articleDetailPage
class _StringsArticleDetailPageZhCn implements _StringsArticleDetailPageEn {
	_StringsArticleDetailPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsArticleDetailPageStatusZhCn status = _StringsArticleDetailPageStatusZhCn._(_root);
}

// Path: moreTab
class _StringsMoreTabZhCn implements _StringsMoreTabEn {
	_StringsMoreTabZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get tabName => '更多';
	@override String get title => '更多';
	@override String get settings => '设置';
	@override String get data => '备份与同步';
	@override String get account => 'YGeeker 账号';
	@override String get feedback => '问题与建议';
	@override String get rate => '给我们评分';
	@override String get share => '把 FlowFerry 分享给好友';
	@override String get about => '关于';
}

// Path: settingsPage
class _StringsSettingsPageZhCn implements _StringsSettingsPageEn {
	_StringsSettingsPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设置';
	@override String get notSet => '未填写';
	@override String get learnMore => '了解更多...';
	@override late final _StringsSettingsPageGeneralSettingsZhCn generalSettings = _StringsSettingsPageGeneralSettingsZhCn._(_root);
	@override late final _StringsSettingsPageCloudSettingsZhCn cloudSettings = _StringsSettingsPageCloudSettingsZhCn._(_root);
	@override late final _StringsSettingsPageNotionSettingsZhCn notionSettings = _StringsSettingsPageNotionSettingsZhCn._(_root);
	@override late final _StringsSettingsPageGithubSettingsZhCn githubSettings = _StringsSettingsPageGithubSettingsZhCn._(_root);
}

// Path: aboutPage
class _StringsAboutPageZhCn implements _StringsAboutPageEn {
	_StringsAboutPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override String get tagline => '设计 & 开发';
	@override String get author => 'Rene Wang';
	@override String get more => '我们的更多产品';
	@override String get checkIntroduction => '再次查看介绍';
	@override late final _StringsAboutPageLetterZhCn letter = _StringsAboutPageLetterZhCn._(_root);
	@override late final _StringsAboutPageYgeekerZhCn ygeeker = _StringsAboutPageYgeekerZhCn._(_root);
	@override List<dynamic> get products => [
		_StringsAboutPage$products$0i0$ZhCn._(_root),
		_StringsAboutPage$products$0i1$ZhCn._(_root),
		_StringsAboutPage$products$0i2$ZhCn._(_root),
	];
}

// Path: feedbackPage
class _StringsFeedbackPageZhCn implements _StringsFeedbackPageEn {
	_StringsFeedbackPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '反馈';
	@override String get sendBtn => '发送反馈';
	@override String get successPrompt => '已提交反馈，感谢您的反馈！';
	@override String get errorPrompt => '反馈提交失败，请稍后再试！';
	@override String get contact => '联系方式（可选）';
	@override String get contentPlaceholder => '告诉我们你的想法';
	@override String get contentTitle => '内容';
}

// Path: localExportPage
class _StringsLocalExportPageZhCn implements _StringsLocalExportPageEn {
	_StringsLocalExportPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '导出文件';
}

// Path: dialog
class _StringsDialogZhCn implements _StringsDialogEn {
	_StringsDialogZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsDialogContactZhCn contact = _StringsDialogContactZhCn._(_root);
}

// Path: syncPage
class _StringsSyncPageZhCn implements _StringsSyncPageEn {
	_StringsSyncPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sync';
	@override String get icloudSync => 'iCloud Sync';
	@override String get webdavSync => 'WebDAV Sync';
	@override String get webdavConfiguration => 'WebDAV Configuration';
	@override String get uploadToIcloud => 'Upload to iCloud';
	@override String get downloadFromIcloud => 'Download from iCloud';
	@override String get uploadToWebdav => 'Upload to WebDAV';
	@override String get downloadFromWebdav => 'Download from WebDAV';
	@override String get uploading => 'Uploading...';
	@override String get downloading => 'Downloading...';
	@override String get uploadSuccess => 'Upload successful';
	@override String get downloadSuccess => 'Download successful';
	@override String uploadError({required Object error}) => 'Upload failed: ${error}';
	@override String downloadError({required Object error}) => 'Download failed: ${error}';
	@override String get webdavUrl => 'WebDAV URL';
	@override String get webdavUsername => 'WebDAV Username';
	@override String get webdavPassword => 'WebDAV Password';
	@override String get saveWebdavCredentials => 'Save WebDAV Credentials';
	@override String get webdavCredentialsNotSet => 'WebDAV credentials are not set';
	@override String get success => 'Success';
	@override String get error => 'Error';
	@override String get ok => 'OK';
}

// Path: loginPage
class _StringsLoginPageZhCn implements _StringsLoginPageEn {
	_StringsLoginPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '登录';
	@override String get noAccount => '我没有帐户';
	@override String get forget => '我忘记了密码';
	@override String get passwordValid => '请输入你的密码';
	@override String get emailValid => '请输入你的电子邮件';
	@override String get errorPrefix => '登录失败：';
}

// Path: signupPage
class _StringsSignupPageZhCn implements _StringsSignupPageEn {
	_StringsSignupPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '注册';
	@override String get passwordConfirm => '确认密码';
	@override String get passwordConfirmValid => '请确认你的密码';
	@override String get haveAccount => '我已经有一个帐户';
	@override String get notMatch => '密码不匹配';
	@override String get errorPrefix => '注册失败：';
}

// Path: subscriptionPage
class _StringsSubscriptionPageZhCn implements _StringsSubscriptionPageEn {
	_StringsSubscriptionPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '会员';
	@override String get restore => '恢复购买';
	@override String get useKey => '使用激活码';
	@override late final _StringsSubscriptionPagePlanZhCn plan = _StringsSubscriptionPagePlanZhCn._(_root);
	@override late final _StringsSubscriptionPagePurchaseKeyZhCn purchaseKey = _StringsSubscriptionPagePurchaseKeyZhCn._(_root);
	@override String get loginHint => '为了你的安心，请在购买会员之前登录，以确保你能拥有购买内容。它还保护你的会员特权免受任何意外损失。';
	@override String get introTitle => '更快录制，更快学习。';
	@override String get introBody => '我们的使命是为每个人带来更好的教育资源。虽然基本计划可以满足大多数学习者的需求，但你可以尝试 TalkReel Plus 以获得更好、更快的学习体验，以及8个特殊功能。';
	@override late final _StringsSubscriptionPageFeaturesZhCn features = _StringsSubscriptionPageFeaturesZhCn._(_root);
	@override late final _StringsSubscriptionPageRedeemZhCn redeem = _StringsSubscriptionPageRedeemZhCn._(_root);
	@override String get unlimited => '不限制';
	@override String get alreadyPurchasedHint => '你已经是 Plus 会员了。';
	@override late final _StringsSubscriptionPagePurchaseHintZhCn purchaseHint = _StringsSubscriptionPagePurchaseHintZhCn._(_root);
}

// Path: accountDetailPage
class _StringsAccountDetailPageZhCn implements _StringsAccountDetailPageEn {
	_StringsAccountDetailPageZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Account';
	@override late final _StringsAccountDetailPageInfoZhCn info = _StringsAccountDetailPageInfoZhCn._(_root);
	@override late final _StringsAccountDetailPagePasswordZhCn password = _StringsAccountDetailPagePasswordZhCn._(_root);
}

// Path: links
class _StringsLinksZhCn implements _StringsLinksEn {
	_StringsLinksZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get root => 'https://www.ygeeker.com.cn/support/flowferry';
	@override String get privacy => '/legal/privacy';
	@override String get tips => '/intro';
	@override String get term => '/legal/term-of-use';
	@override String get ted => '/tutorial-basics/import-from-ted';
	@override String get githubTutorial => '/tutorial-basics/import-from-wechat';
	@override String get notionTutorial => '/tutorial-basics/import-from-wechat';
	@override String get purchaseKey => '/tutorial-extras/purchase_product_key';
	@override String get ygeeker => 'https://www.ygeeker.com.cn';
}

// Path: errors
class _StringsErrorsZhCn implements _StringsErrorsEn {
	_StringsErrorsZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get notionNotConfigured => 'Notion 未正确配置';
}

// Path: landingPage.welcomeScreen
class _StringsLandingPageWelcomeScreenZhCn implements _StringsLandingPageWelcomeScreenEn {
	_StringsLandingPageWelcomeScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '欢迎使用 FlowFerry';
	@override String get subtitle => '让互联网上的内容真正属于你。';
	@override String get nextButton => '开始';
}

// Path: landingPage.featuresScreen
class _StringsLandingPageFeaturesScreenZhCn implements _StringsLandingPageFeaturesScreenEn {
	_StringsLandingPageFeaturesScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '看看 FlowFerry 能为你做什么';
	@override late final _StringsLandingPageFeaturesScreenFeaturesZhCn features = _StringsLandingPageFeaturesScreenFeaturesZhCn._(_root);
	@override String get nextButton => '继续';
}

// Path: landingPage.proTipScreen
class _StringsLandingPageProTipScreenZhCn implements _StringsLandingPageProTipScreenEn {
	_StringsLandingPageProTipScreenZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '小技巧';
	@override String get description => '你可以直接分享 URL 到 FlowFerry 以实现快速存档';
	@override String get getStartedButton => '开始使用';
}

// Path: homeTab.status
class _StringsHomeTabStatusZhCn implements _StringsHomeTabStatusEn {
	_StringsHomeTabStatusZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get failed => '发送失败';
	@override String sending({required Object destination}) => '正在发送到 ${destination}...';
	@override String get fetchingContent => '获取内容中...';
	@override String get fetchingImage => '获取图片中...';
}

// Path: libraryTab.prompts
class _StringsLibraryTabPromptsZhCn implements _StringsLibraryTabPromptsEn {
	_StringsLibraryTabPromptsZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String read({required Object title}) => '设为已读：${title}';
	@override String unread({required Object title}) => '设为未读：${title}';
	@override String deleted({required Object title}) => '已删除：${title}';
}

// Path: articleDetailPage.status
class _StringsArticleDetailPageStatusZhCn implements _StringsArticleDetailPageStatusEn {
	_StringsArticleDetailPageStatusZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String sendFailed({required Object error}) => '发送失败： ${error}';
}

// Path: settingsPage.generalSettings
class _StringsSettingsPageGeneralSettingsZhCn implements _StringsSettingsPageGeneralSettingsEn {
	_StringsSettingsPageGeneralSettingsZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '通用设置';
	@override String get colorMode => '外观';
	@override String get saveImage => '保存图片';
	@override String get langauge => '显示语言';
}

// Path: settingsPage.cloudSettings
class _StringsSettingsPageCloudSettingsZhCn implements _StringsSettingsPageCloudSettingsEn {
	_StringsSettingsPageCloudSettingsZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '云服务配置';
	@override String get help => '';
}

// Path: settingsPage.notionSettings
class _StringsSettingsPageNotionSettingsZhCn implements _StringsSettingsPageNotionSettingsEn {
	_StringsSettingsPageNotionSettingsZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notion 配置';
	@override String get integrationKey => 'Integration Key';
	@override String get databaseId => 'Database ID';
	@override String get help => '你需要将你的页面连接到 Integration 才能推送到 Notion。';
}

// Path: settingsPage.githubSettings
class _StringsSettingsPageGithubSettingsZhCn implements _StringsSettingsPageGithubSettingsEn {
	_StringsSettingsPageGithubSettingsZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'GitHub 配置';
	@override String get token => '访问令牌';
	@override String get owner => '用户名';
	@override String get repo => '仓库名';
	@override String get help => 'Choose a GitHub repo to store your content. ';
}

// Path: aboutPage.letter
class _StringsAboutPageLetterZhCn implements _StringsAboutPageLetterEn {
	_StringsAboutPageLetterZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '我们的一封信';
}

// Path: aboutPage.ygeeker
class _StringsAboutPageYgeekerZhCn implements _StringsAboutPageYgeekerEn {
	_StringsAboutPageYgeekerZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'YGeeker';
	@override String get subtitle => '出品';
	@override String get body => '我们是来自中国的学生创业团队，我们的使命是让每个人找到科技与生活的平衡。';
	@override String get learnMore => '了解更多...';
}

// Path: aboutPage.products.0
class _StringsAboutPage$products$0i0$ZhCn implements _StringsAboutPage$products$0i0$En {
	_StringsAboutPage$products$0i0$ZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Geekits';
	@override String get description => '极简、强大、高效的综合工具箱';
	@override String get url => 'https://geekits.ygeeker.com';
	@override String get icon => 'assets/icons/products/geekits.png';
}

// Path: aboutPage.products.1
class _StringsAboutPage$products$0i1$ZhCn implements _StringsAboutPage$products$0i1$En {
	_StringsAboutPage$products$0i1$ZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => 'ClipMemo';
	@override String get description => '你的音视频笔记本';
	@override String get url => 'https://www.ygeeker.com.cn/product/clipmemo';
	@override String get icon => 'assets/icons/products/clipmemo.png';
}

// Path: aboutPage.products.2
class _StringsAboutPage$products$0i2$ZhCn implements _StringsAboutPage$products$0i2$En {
	_StringsAboutPage$products$0i2$ZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Currates';
	@override String get description => '沉浸式汇率换算浏览器插件';
	@override String get url => 'https://github.com/RiverTwilight/Currates';
	@override String get icon => 'assets/icons/products/currates.png';
}

// Path: dialog.contact
class _StringsDialogContactZhCn implements _StringsDialogContactEn {
	_StringsDialogContactZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get replayTime => '我们会在 2 个工作日内回复你。';
	@override String get wechat => '微信';
	@override String get red => '小红书';
	@override String get wechatCopied => '已复制微信号';
	@override String get redCopied => '已复制小红书 ID。在小红书中搜索此账户即可联系我们。';
	@override String get emailCopied => '已复制邮件';
}

// Path: subscriptionPage.plan
class _StringsSubscriptionPagePlanZhCn implements _StringsSubscriptionPagePlanEn {
	_StringsSubscriptionPagePlanZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '选择方案';
	@override String get monthly => '一个月';
	@override String get yearly => '一年';
	@override String get lifetime => '终生';
	@override String dailyPrice({required Object price}) => '每天仅${price}';
}

// Path: subscriptionPage.purchaseKey
class _StringsSubscriptionPagePurchaseKeyZhCn implements _StringsSubscriptionPagePurchaseKeyEn {
	_StringsSubscriptionPagePurchaseKeyZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '购买产品激活码';
	@override String get purchaseBtn => '购买激活码';
	@override String get alipay => '从支付宝购买';
	@override String get taobao => '从淘宝购买';
	@override String get inputHint => '输入产品激活码';
}

// Path: subscriptionPage.features
class _StringsSubscriptionPageFeaturesZhCn implements _StringsSubscriptionPageFeaturesEn {
	_StringsSubscriptionPageFeaturesZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get cloudSync => '云同步';
	@override String get note => '笔记';
	@override String get review => '每日回顾';
	@override String get tag => '标签系统';
	@override String get bookmark => '书签';
	@override String get transcribe => '自动转录';
	@override String get speed => '播放速度';
	@override String get media => '媒体';
	@override String get loop => '循环';
	@override String get theme => '主题颜色';
}

// Path: subscriptionPage.redeem
class _StringsSubscriptionPageRedeemZhCn implements _StringsSubscriptionPageRedeemEn {
	_StringsSubscriptionPageRedeemZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '兑换';
	@override String get dialogTitle => '兑换优惠码';
	@override String get inputHint => '输入优惠码';
	@override String get redeemSuccessHint => '兑换成功。';
	@override String get redeemSuccessHintWeb => '兑换成功。你可以打开 ClipMemo 继续使用。';
}

// Path: subscriptionPage.purchaseHint
class _StringsSubscriptionPagePurchaseHintZhCn implements _StringsSubscriptionPagePurchaseHintEn {
	_StringsSubscriptionPagePurchaseHintZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get beforePolicy => '购买前请查看我们的';
	@override String get policy => '政策';
	@override String get afterPolicy => '。如果付款后你的订阅状态没有更新，请凭支付收据截图';
	@override String get contact => '联系我们';
	@override String get afterContact => '。';
}

// Path: accountDetailPage.info
class _StringsAccountDetailPageInfoZhCn implements _StringsAccountDetailPageInfoEn {
	_StringsAccountDetailPageInfoZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Info';
}

// Path: accountDetailPage.password
class _StringsAccountDetailPagePasswordZhCn implements _StringsAccountDetailPagePasswordEn {
	_StringsAccountDetailPagePasswordZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get oldPwd => 'Old Password';
	@override String get newPwd => 'New Password';
}

// Path: landingPage.featuresScreen.features
class _StringsLandingPageFeaturesScreenFeaturesZhCn implements _StringsLandingPageFeaturesScreenFeaturesEn {
	_StringsLandingPageFeaturesScreenFeaturesZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferZhCn preserveAndTransfer = _StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferZhCn._(_root);
	@override late final _StringsLandingPageFeaturesScreenFeaturesExportFlexibilityZhCn exportFlexibility = _StringsLandingPageFeaturesScreenFeaturesExportFlexibilityZhCn._(_root);
	@override late final _StringsLandingPageFeaturesScreenFeaturesElegantReadingZhCn elegantReading = _StringsLandingPageFeaturesScreenFeaturesElegantReadingZhCn._(_root);
}

// Path: landingPage.featuresScreen.features.preserveAndTransfer
class _StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferZhCn implements _StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferEn {
	_StringsLandingPageFeaturesScreenFeaturesPreserveAndTransferZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '保存与稍后读';
	@override String get description => '一键离线保存网页，方便稍后阅读，或是随时查阅。';
}

// Path: landingPage.featuresScreen.features.exportFlexibility
class _StringsLandingPageFeaturesScreenFeaturesExportFlexibilityZhCn implements _StringsLandingPageFeaturesScreenFeaturesExportFlexibilityEn {
	_StringsLandingPageFeaturesScreenFeaturesExportFlexibilityZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '灵活导出';
	@override String get description => '将内容发送到 Notion、Google Drive、OneDrive 等服务，或导出为 PDF、HTML 和 Markdown 文件。';
}

// Path: landingPage.featuresScreen.features.elegantReading
class _StringsLandingPageFeaturesScreenFeaturesElegantReadingZhCn implements _StringsLandingPageFeaturesScreenFeaturesElegantReadingEn {
	_StringsLandingPageFeaturesScreenFeaturesElegantReadingZhCn._(this._root);

	@override final _StringsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '优雅阅读体验';
	@override String get description => '精心设计的阅读界面，享受沉浸式无打扰阅读。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'locale': return 'English';
			case 'appName': return 'FlowFerry';
			case 'general.add': return 'Add';
			case 'general.advanced': return 'Advanced';
			case 'general.cancel': return 'Cancel';
			case 'general.close': return 'Close';
			case 'general.confirm': return 'Confirm';
			case 'general.continueStr': return 'Continue';
			case 'general.copy': return 'Copy';
			case 'general.decline': return 'Decline';
			case 'general.delete': return 'Delete';
			case 'general.done': return 'Done';
			case 'general.edit': return 'Edit';
			case 'general.email': return 'Email';
			case 'general.error': return 'Error';
			case 'general.example': return 'Example';
			case 'general.finished': return 'Finished';
			case 'general.hide': return 'Hide';
			case 'general.off': return 'Off';
			case 'general.on': return 'On';
			case 'general.open': return 'Open';
			case 'general.password': return 'Password';
			case 'general.reset': return 'Reset';
			case 'general.settings': return 'Settings';
			case 'general.start': return 'Start';
			case 'general.stop': return 'Stop';
			case 'general.save': return 'Save';
			case 'general.unchanged': return 'Unchanged';
			case 'general.unknown': return 'Unknown';
			case 'landingPage.welcomeScreen.title': return 'Welcome to FlowFerry';
			case 'landingPage.welcomeScreen.subtitle': return 'Own the content on the Internet, truely.';
			case 'landingPage.welcomeScreen.nextButton': return 'Next';
			case 'landingPage.featuresScreen.title': return 'See what FlowFerry can do for you';
			case 'landingPage.featuresScreen.features.preserveAndTransfer.title': return 'Preserve and Transfer';
			case 'landingPage.featuresScreen.features.preserveAndTransfer.description': return 'Save web pages offline and seamlessly integrate with your digital garden.';
			case 'landingPage.featuresScreen.features.exportFlexibility.title': return 'Export Flexibility';
			case 'landingPage.featuresScreen.features.exportFlexibility.description': return 'Export content to Notion, Google Drive, OneDrive, PDF, HTML, and Markdown.';
			case 'landingPage.featuresScreen.features.elegantReading.title': return 'Elegant Reading Experience';
			case 'landingPage.featuresScreen.features.elegantReading.description': return 'Enjoy a meticulously designed offline reading interface.';
			case 'landingPage.featuresScreen.nextButton': return 'Next';
			case 'landingPage.proTipScreen.title': return 'Pro Tip';
			case 'landingPage.proTipScreen.description': return 'Share URLs directly to FlowFerry for quick archiving';
			case 'landingPage.proTipScreen.getStartedButton': return 'Get Started';
			case 'homeTab.tabName': return 'Home';
			case 'homeTab.title': return 'I Didn\'t...';
			case 'homeTab.sendBtn': return 'Save';
			case 'homeTab.inputHit': return 'Enter URL Here';
			case 'homeTab.status.failed': return 'Send Failed';
			case 'homeTab.status.sending': return ({required Object destination}) => 'Sending to ${destination}...';
			case 'homeTab.status.fetchingContent': return 'Fetching Content...';
			case 'homeTab.status.fetchingImage': return 'Fetching Images...';
			case 'libraryTab.tabName': return 'Library';
			case 'libraryTab.title': return 'Statistic';
			case 'libraryTab.readTab': return 'Read';
			case 'libraryTab.unReadTab': return 'Unread';
			case 'libraryTab.clear': return 'Clear All...';
			case 'libraryTab.emptyHint': return 'No Articles Here Yet';
			case 'libraryTab.count': return ({required Object number}) => 'Total Articles: ${number}';
			case 'libraryTab.prompts.read': return ({required Object title}) => 'Mark as read: ${title}';
			case 'libraryTab.prompts.unread': return ({required Object title}) => 'Mark as unread: ${title}';
			case 'libraryTab.prompts.deleted': return ({required Object title}) => 'Deleted: ${title}';
			case 'libraryTab.dataCollectionConsent': return 'Your data will never sent to our server. You can use third-party provider to sync your data.';
			case 'articleDetailPage.status.sendFailed': return ({required Object error}) => 'Sending Failed: ${error}';
			case 'moreTab.tabName': return 'More';
			case 'moreTab.title': return 'Settings';
			case 'moreTab.settings': return 'Settings';
			case 'moreTab.data': return 'Backup & Sync';
			case 'moreTab.account': return 'YGeeker Account';
			case 'moreTab.feedback': return 'Feedback';
			case 'moreTab.rate': return 'Rate our app';
			case 'moreTab.share': return 'Share FlowFerry';
			case 'moreTab.about': return 'About';
			case 'settingsPage.title': return 'Settings';
			case 'settingsPage.notSet': return 'Not Set';
			case 'settingsPage.learnMore': return 'Learn More...';
			case 'settingsPage.generalSettings.title': return 'General Settings';
			case 'settingsPage.generalSettings.colorMode': return 'Color Mode';
			case 'settingsPage.generalSettings.saveImage': return 'Save Image';
			case 'settingsPage.generalSettings.langauge': return 'Language';
			case 'settingsPage.cloudSettings.title': return 'Cloud Service Settings';
			case 'settingsPage.cloudSettings.help': return '';
			case 'settingsPage.notionSettings.title': return 'Notion Settings';
			case 'settingsPage.notionSettings.integrationKey': return 'Integration Key';
			case 'settingsPage.notionSettings.databaseId': return 'Database ID';
			case 'settingsPage.notionSettings.help': return 'Go to Notion and get the key and ID. ';
			case 'settingsPage.githubSettings.title': return 'GitHub Settings';
			case 'settingsPage.githubSettings.token': return 'Access Token';
			case 'settingsPage.githubSettings.owner': return 'Username';
			case 'settingsPage.githubSettings.repo': return 'Repo Name';
			case 'settingsPage.githubSettings.help': return 'Choose a GitHub repo to store your content. ';
			case 'aboutPage.title': return 'About';
			case 'aboutPage.tagline': return 'Designed and Created by';
			case 'aboutPage.author': return 'Rene Wang';
			case 'aboutPage.more': return 'More Hand-crafted Apps & Games';
			case 'aboutPage.checkIntroduction': return 'Check Introduction Again';
			case 'aboutPage.letter.title': return 'A Letter From Us';
			case 'aboutPage.ygeeker.title': return 'YGeeker';
			case 'aboutPage.ygeeker.subtitle': return 'A Work From';
			case 'aboutPage.ygeeker.body': return 'We are young startup building amazing stuffs. We make things with love, and only earn essentials to run our business. We have a limited size but an unlimited creativity.';
			case 'aboutPage.ygeeker.learnMore': return 'Learn more about us...';
			case 'aboutPage.products.0.name': return 'Geekits';
			case 'aboutPage.products.0.description': return 'Feature-rich Toolbox';
			case 'aboutPage.products.0.url': return 'https://geekits.ygeeker.com';
			case 'aboutPage.products.0.icon': return 'assets/icons/products/geekits.png';
			case 'aboutPage.products.1.name': return 'ClipMemo';
			case 'aboutPage.products.1.description': return 'Your Media Notebook';
			case 'aboutPage.products.1.url': return 'https://www.ygeeker.com/product/clipmemo';
			case 'aboutPage.products.1.icon': return 'assets/icons/products/clipmemo.png';
			case 'aboutPage.products.2.name': return 'Currates';
			case 'aboutPage.products.2.description': return 'Convert the currency appeared on webpage simply by selecting them.';
			case 'aboutPage.products.2.url': return 'https://github.com/RiverTwilight/Currates';
			case 'aboutPage.products.2.icon': return 'assets/icons/products/currates.png';
			case 'feedbackPage.title': return 'Feedback';
			case 'feedbackPage.sendBtn': return 'Send Feedback';
			case 'feedbackPage.successPrompt': return 'Thanks for your contribution!';
			case 'feedbackPage.errorPrompt': return 'Submission failed, try send an email to me in about page.';
			case 'feedbackPage.contact': return 'How can we contact you? (Optional)';
			case 'feedbackPage.contentPlaceholder': return 'Write anything to us!';
			case 'feedbackPage.contentTitle': return 'Content';
			case 'localExportPage.title': return 'Export File';
			case 'dialog.contact.replayTime': return 'You\'ll get a reply in 2 business days';
			case 'dialog.contact.wechat': return 'WeChat';
			case 'dialog.contact.red': return 'RED';
			case 'dialog.contact.wechatCopied': return 'WeChat ID copied';
			case 'dialog.contact.redCopied': return 'RED ID copied';
			case 'dialog.contact.emailCopied': return 'Email address copied';
			case 'syncPage.title': return 'Sync';
			case 'syncPage.icloudSync': return 'iCloud Sync';
			case 'syncPage.webdavSync': return 'WebDAV Sync';
			case 'syncPage.webdavConfiguration': return 'WebDAV Configuration';
			case 'syncPage.uploadToIcloud': return 'Upload to iCloud';
			case 'syncPage.downloadFromIcloud': return 'Download from iCloud';
			case 'syncPage.uploadToWebdav': return 'Upload to WebDAV';
			case 'syncPage.downloadFromWebdav': return 'Download from WebDAV';
			case 'syncPage.uploading': return 'Uploading...';
			case 'syncPage.downloading': return 'Downloading...';
			case 'syncPage.uploadSuccess': return 'Upload successful';
			case 'syncPage.downloadSuccess': return 'Download successful';
			case 'syncPage.uploadError': return ({required Object error}) => 'Upload failed: ${error}';
			case 'syncPage.downloadError': return ({required Object error}) => 'Download failed: ${error}';
			case 'syncPage.webdavUrl': return 'WebDAV URL';
			case 'syncPage.webdavUsername': return 'WebDAV Username';
			case 'syncPage.webdavPassword': return 'WebDAV Password';
			case 'syncPage.saveWebdavCredentials': return 'Save WebDAV Credentials';
			case 'syncPage.webdavCredentialsNotSet': return 'WebDAV credentials are not set';
			case 'syncPage.success': return 'Success';
			case 'syncPage.error': return 'Error';
			case 'syncPage.ok': return 'OK';
			case 'loginPage.title': return '登录';
			case 'loginPage.noAccount': return '我没有帐户';
			case 'loginPage.forget': return '我忘记了密码';
			case 'loginPage.passwordValid': return '请输入你的密码';
			case 'loginPage.emailValid': return '请输入你的电子邮件';
			case 'loginPage.errorPrefix': return '登录失败：';
			case 'signupPage.title': return '注册';
			case 'signupPage.passwordConfirm': return '确认密码';
			case 'signupPage.passwordConfirmValid': return '请确认你的密码';
			case 'signupPage.haveAccount': return '我已经有一个帐户';
			case 'signupPage.notMatch': return '密码不匹配';
			case 'signupPage.errorPrefix': return '注册失败：';
			case 'subscriptionPage.title': return 'Membership';
			case 'subscriptionPage.restore': return 'Restore Purchase';
			case 'subscriptionPage.useKey': return 'Use Activation Key';
			case 'subscriptionPage.plan.title': return 'Choose Your Plan';
			case 'subscriptionPage.plan.monthly': return '30 Days';
			case 'subscriptionPage.plan.yearly': return '1 Year';
			case 'subscriptionPage.plan.lifetime': return 'Lifetime';
			case 'subscriptionPage.plan.dailyPrice': return ({required Object price}) => '${price}/Day';
			case 'subscriptionPage.purchaseKey.title': return 'Purchase a Activation Key';
			case 'subscriptionPage.purchaseKey.purchaseBtn': return 'Purchase';
			case 'subscriptionPage.purchaseKey.alipay': return 'Buy through Alipay';
			case 'subscriptionPage.purchaseKey.taobao': return 'Buy through Taobao.com';
			case 'subscriptionPage.purchaseKey.inputHint': return 'Enter the product key';
			case 'subscriptionPage.loginHint': return 'For your peace of mind, logging in before purchasing a membership ensures that your payment is correctly allocated to your account. It also safeguards your membership privileges against any unexpected loss.';
			case 'subscriptionPage.introTitle': return 'Record Faster, Learn Faster.';
			case 'subscriptionPage.introBody': return 'Our mission is to bring everyone better education resource. While basic plan can meet most leaner\'s demand, you can try TalkReel Plus to gain a better, faster learning experience, and 8 special features.';
			case 'subscriptionPage.features.cloudSync': return 'Cloud sync';
			case 'subscriptionPage.features.note': return 'Note';
			case 'subscriptionPage.features.review': return 'Daily Review';
			case 'subscriptionPage.features.tag': return 'Tag System';
			case 'subscriptionPage.features.bookmark': return 'Bookmark';
			case 'subscriptionPage.features.transcribe': return 'Auto Transcribe';
			case 'subscriptionPage.features.speed': return 'Playback Speed';
			case 'subscriptionPage.features.media': return 'Media';
			case 'subscriptionPage.features.loop': return 'Loop';
			case 'subscriptionPage.features.theme': return 'Theme Color';
			case 'subscriptionPage.redeem.title': return 'Redeem';
			case 'subscriptionPage.redeem.dialogTitle': return 'Redeem Offer Code';
			case 'subscriptionPage.redeem.inputHint': return 'Enter the promo code';
			case 'subscriptionPage.redeem.redeemSuccessHint': return 'Redeem Successfully.';
			case 'subscriptionPage.redeem.redeemSuccessHintWeb': return 'Redeem Successfully. You can open ClipMemo app now.';
			case 'subscriptionPage.unlimited': return 'Unlimited';
			case 'subscriptionPage.alreadyPurchasedHint': return 'You are already a Plus member.';
			case 'subscriptionPage.purchaseHint.beforePolicy': return 'Please check our ';
			case 'subscriptionPage.purchaseHint.policy': return 'policy';
			case 'subscriptionPage.purchaseHint.afterPolicy': return ' before purchasing. If you didn\'t receive your purchase, please ';
			case 'subscriptionPage.purchaseHint.contact': return 'contact us';
			case 'subscriptionPage.purchaseHint.afterContact': return ' at here.';
			case 'accountDetailPage.title': return 'Account';
			case 'accountDetailPage.info.title': return 'Info';
			case 'accountDetailPage.password.oldPwd': return 'Old Password';
			case 'accountDetailPage.password.newPwd': return 'New Password';
			case 'links.root': return 'https://www.ygeeker.com/support/flowferry';
			case 'links.privacy': return '/legal/privacy';
			case 'links.tips': return '/intro';
			case 'links.term': return '/legal/term-of-use';
			case 'links.ted': return '/tutorial-basics/import-from-ted';
			case 'links.githubTutorial': return '/tutorial-basics/import-from-wechat';
			case 'links.notionTutorial': return '/tutorial-basics/import-from-wechat';
			case 'links.purchaseKey': return '/tutorial-extras/purchase_product_key';
			case 'links.ygeeker': return 'https://www.ygeeker.com';
			case 'errors.notionNotConfigured': return 'Notion Not Configured';
			default: return null;
		}
	}
}

extension on _StringsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'locale': return '简体中文';
			case 'appName': return 'FlowFerry';
			case 'general.add': return '添加';
			case 'general.advanced': return '高级';
			case 'general.cancel': return '取消';
			case 'general.close': return '关闭';
			case 'general.confirm': return '确认';
			case 'general.continueStr': return '继续';
			case 'general.copy': return '复制';
			case 'general.delete': return '删除';
			case 'general.decline': return '拒绝';
			case 'general.done': return '完成';
			case 'general.edit': return '编辑';
			case 'general.email': return '电子邮件';
			case 'general.error': return '错误';
			case 'general.example': return '示例';
			case 'general.finished': return '已完成';
			case 'general.hide': return '隐藏';
			case 'general.off': return '关';
			case 'general.on': return '开';
			case 'general.open': return '打开';
			case 'general.password': return '密码';
			case 'general.reset': return '重置';
			case 'general.settings': return '设置';
			case 'general.start': return '开始';
			case 'general.stop': return '停止';
			case 'general.save': return '保存';
			case 'general.unchanged': return '未更改';
			case 'general.unknown': return '未知';
			case 'landingPage.welcomeScreen.title': return '欢迎使用 FlowFerry';
			case 'landingPage.welcomeScreen.subtitle': return '让互联网上的内容真正属于你。';
			case 'landingPage.welcomeScreen.nextButton': return '开始';
			case 'landingPage.featuresScreen.title': return '看看 FlowFerry 能为你做什么';
			case 'landingPage.featuresScreen.features.preserveAndTransfer.title': return '保存与稍后读';
			case 'landingPage.featuresScreen.features.preserveAndTransfer.description': return '一键离线保存网页，方便稍后阅读，或是随时查阅。';
			case 'landingPage.featuresScreen.features.exportFlexibility.title': return '灵活导出';
			case 'landingPage.featuresScreen.features.exportFlexibility.description': return '将内容发送到 Notion、Google Drive、OneDrive 等服务，或导出为 PDF、HTML 和 Markdown 文件。';
			case 'landingPage.featuresScreen.features.elegantReading.title': return '优雅阅读体验';
			case 'landingPage.featuresScreen.features.elegantReading.description': return '精心设计的阅读界面，享受沉浸式无打扰阅读。';
			case 'landingPage.featuresScreen.nextButton': return '继续';
			case 'landingPage.proTipScreen.title': return '小技巧';
			case 'landingPage.proTipScreen.description': return '你可以直接分享 URL 到 FlowFerry 以实现快速存档';
			case 'landingPage.proTipScreen.getStartedButton': return '开始使用';
			case 'homeTab.tabName': return '首页';
			case 'homeTab.title': return 'I Didn\'t...';
			case 'homeTab.sendBtn': return '保存';
			case 'homeTab.inputHit': return '文章链接';
			case 'homeTab.status.failed': return '发送失败';
			case 'homeTab.status.sending': return ({required Object destination}) => '正在发送到 ${destination}...';
			case 'homeTab.status.fetchingContent': return '获取内容中...';
			case 'homeTab.status.fetchingImage': return '获取图片中...';
			case 'libraryTab.tabName': return '内容库';
			case 'libraryTab.title': return 'Statistic';
			case 'libraryTab.readTab': return '已读';
			case 'libraryTab.unReadTab': return '未读';
			case 'libraryTab.clear': return '清除全部...';
			case 'libraryTab.emptyHint': return '这里还没有文章';
			case 'libraryTab.count': return ({required Object number}) => '总计 ${number} 篇文章';
			case 'libraryTab.prompts.read': return ({required Object title}) => '设为已读：${title}';
			case 'libraryTab.prompts.unread': return ({required Object title}) => '设为未读：${title}';
			case 'libraryTab.prompts.deleted': return ({required Object title}) => '已删除：${title}';
			case 'libraryTab.dataCollectionConsent': return '你的数据仅仅保存在你的设备上，你可以使用第三方服务进行多端数据同步。';
			case 'articleDetailPage.status.sendFailed': return ({required Object error}) => '发送失败： ${error}';
			case 'moreTab.tabName': return '更多';
			case 'moreTab.title': return '更多';
			case 'moreTab.settings': return '设置';
			case 'moreTab.data': return '备份与同步';
			case 'moreTab.account': return 'YGeeker 账号';
			case 'moreTab.feedback': return '问题与建议';
			case 'moreTab.rate': return '给我们评分';
			case 'moreTab.share': return '把 FlowFerry 分享给好友';
			case 'moreTab.about': return '关于';
			case 'settingsPage.title': return '设置';
			case 'settingsPage.notSet': return '未填写';
			case 'settingsPage.learnMore': return '了解更多...';
			case 'settingsPage.generalSettings.title': return '通用设置';
			case 'settingsPage.generalSettings.colorMode': return '外观';
			case 'settingsPage.generalSettings.saveImage': return '保存图片';
			case 'settingsPage.generalSettings.langauge': return '显示语言';
			case 'settingsPage.cloudSettings.title': return '云服务配置';
			case 'settingsPage.cloudSettings.help': return '';
			case 'settingsPage.notionSettings.title': return 'Notion 配置';
			case 'settingsPage.notionSettings.integrationKey': return 'Integration Key';
			case 'settingsPage.notionSettings.databaseId': return 'Database ID';
			case 'settingsPage.notionSettings.help': return '你需要将你的页面连接到 Integration 才能推送到 Notion。';
			case 'settingsPage.githubSettings.title': return 'GitHub 配置';
			case 'settingsPage.githubSettings.token': return '访问令牌';
			case 'settingsPage.githubSettings.owner': return '用户名';
			case 'settingsPage.githubSettings.repo': return '仓库名';
			case 'settingsPage.githubSettings.help': return 'Choose a GitHub repo to store your content. ';
			case 'aboutPage.title': return '关于';
			case 'aboutPage.tagline': return '设计 & 开发';
			case 'aboutPage.author': return 'Rene Wang';
			case 'aboutPage.more': return '我们的更多产品';
			case 'aboutPage.checkIntroduction': return '再次查看介绍';
			case 'aboutPage.letter.title': return '我们的一封信';
			case 'aboutPage.ygeeker.title': return 'YGeeker';
			case 'aboutPage.ygeeker.subtitle': return '出品';
			case 'aboutPage.ygeeker.body': return '我们是来自中国的学生创业团队，我们的使命是让每个人找到科技与生活的平衡。';
			case 'aboutPage.ygeeker.learnMore': return '了解更多...';
			case 'aboutPage.products.0.name': return 'Geekits';
			case 'aboutPage.products.0.description': return '极简、强大、高效的综合工具箱';
			case 'aboutPage.products.0.url': return 'https://geekits.ygeeker.com';
			case 'aboutPage.products.0.icon': return 'assets/icons/products/geekits.png';
			case 'aboutPage.products.1.name': return 'ClipMemo';
			case 'aboutPage.products.1.description': return '你的音视频笔记本';
			case 'aboutPage.products.1.url': return 'https://www.ygeeker.com.cn/product/clipmemo';
			case 'aboutPage.products.1.icon': return 'assets/icons/products/clipmemo.png';
			case 'aboutPage.products.2.name': return 'Currates';
			case 'aboutPage.products.2.description': return '沉浸式汇率换算浏览器插件';
			case 'aboutPage.products.2.url': return 'https://github.com/RiverTwilight/Currates';
			case 'aboutPage.products.2.icon': return 'assets/icons/products/currates.png';
			case 'feedbackPage.title': return '反馈';
			case 'feedbackPage.sendBtn': return '发送反馈';
			case 'feedbackPage.successPrompt': return '已提交反馈，感谢您的反馈！';
			case 'feedbackPage.errorPrompt': return '反馈提交失败，请稍后再试！';
			case 'feedbackPage.contact': return '联系方式（可选）';
			case 'feedbackPage.contentPlaceholder': return '告诉我们你的想法';
			case 'feedbackPage.contentTitle': return '内容';
			case 'localExportPage.title': return '导出文件';
			case 'dialog.contact.replayTime': return '我们会在 2 个工作日内回复你。';
			case 'dialog.contact.wechat': return '微信';
			case 'dialog.contact.red': return '小红书';
			case 'dialog.contact.wechatCopied': return '已复制微信号';
			case 'dialog.contact.redCopied': return '已复制小红书 ID。在小红书中搜索此账户即可联系我们。';
			case 'dialog.contact.emailCopied': return '已复制邮件';
			case 'syncPage.title': return 'Sync';
			case 'syncPage.icloudSync': return 'iCloud Sync';
			case 'syncPage.webdavSync': return 'WebDAV Sync';
			case 'syncPage.webdavConfiguration': return 'WebDAV Configuration';
			case 'syncPage.uploadToIcloud': return 'Upload to iCloud';
			case 'syncPage.downloadFromIcloud': return 'Download from iCloud';
			case 'syncPage.uploadToWebdav': return 'Upload to WebDAV';
			case 'syncPage.downloadFromWebdav': return 'Download from WebDAV';
			case 'syncPage.uploading': return 'Uploading...';
			case 'syncPage.downloading': return 'Downloading...';
			case 'syncPage.uploadSuccess': return 'Upload successful';
			case 'syncPage.downloadSuccess': return 'Download successful';
			case 'syncPage.uploadError': return ({required Object error}) => 'Upload failed: ${error}';
			case 'syncPage.downloadError': return ({required Object error}) => 'Download failed: ${error}';
			case 'syncPage.webdavUrl': return 'WebDAV URL';
			case 'syncPage.webdavUsername': return 'WebDAV Username';
			case 'syncPage.webdavPassword': return 'WebDAV Password';
			case 'syncPage.saveWebdavCredentials': return 'Save WebDAV Credentials';
			case 'syncPage.webdavCredentialsNotSet': return 'WebDAV credentials are not set';
			case 'syncPage.success': return 'Success';
			case 'syncPage.error': return 'Error';
			case 'syncPage.ok': return 'OK';
			case 'loginPage.title': return '登录';
			case 'loginPage.noAccount': return '我没有帐户';
			case 'loginPage.forget': return '我忘记了密码';
			case 'loginPage.passwordValid': return '请输入你的密码';
			case 'loginPage.emailValid': return '请输入你的电子邮件';
			case 'loginPage.errorPrefix': return '登录失败：';
			case 'signupPage.title': return '注册';
			case 'signupPage.passwordConfirm': return '确认密码';
			case 'signupPage.passwordConfirmValid': return '请确认你的密码';
			case 'signupPage.haveAccount': return '我已经有一个帐户';
			case 'signupPage.notMatch': return '密码不匹配';
			case 'signupPage.errorPrefix': return '注册失败：';
			case 'subscriptionPage.title': return '会员';
			case 'subscriptionPage.restore': return '恢复购买';
			case 'subscriptionPage.useKey': return '使用激活码';
			case 'subscriptionPage.plan.title': return '选择方案';
			case 'subscriptionPage.plan.monthly': return '一个月';
			case 'subscriptionPage.plan.yearly': return '一年';
			case 'subscriptionPage.plan.lifetime': return '终生';
			case 'subscriptionPage.plan.dailyPrice': return ({required Object price}) => '每天仅${price}';
			case 'subscriptionPage.purchaseKey.title': return '购买产品激活码';
			case 'subscriptionPage.purchaseKey.purchaseBtn': return '购买激活码';
			case 'subscriptionPage.purchaseKey.alipay': return '从支付宝购买';
			case 'subscriptionPage.purchaseKey.taobao': return '从淘宝购买';
[Desensitization, reference only]
		}
	}
}
