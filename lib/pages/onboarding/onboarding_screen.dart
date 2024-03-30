part of 'onboardingpage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  List<OnBoardingModel> _onboardingPageList(BuildContext context) => [
        OnBoardingModel(
          title: AppLocalizations.of(context)!.product,
          subtitle: AppLocalizations.of(context)!
              .select_different_products_the_freedom_is_yours,
          image: Illustrations.onBoarding1,
        ),
        OnBoardingModel(
          title: AppLocalizations.of(context)!.easy,
          subtitle: AppLocalizations.of(context)!
              .pay_for_the_products_you_buy_safely_and_easly,
          image: Illustrations.onBoarding2,
        ),
        OnBoardingModel(
          title: AppLocalizations.of(context)!.fast,
          subtitle: AppLocalizations.of(context)!
              .super_fast_delivery_right_at_your_door,
          image: Illustrations.onBoarding3,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(),
    );
  }
}
