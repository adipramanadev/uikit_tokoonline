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
      body: Stack(
        children: [
          BuilBody(
            itemList: _onboardingPageList(context),
            controller: _pageController,
            onPageChanged: (v) {
              setState(() {
                _currentIndex = v;
              });
            },
          ),
          BuildFooter(
            index: _currentIndex,
            dotsCount: _onboardingPageList(context).length,
            onTap: () {
              if (_currentIndex == 2) {
                Get.toNamed<dynamic>(TokoOnlineKit.signIn);
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            },
          )
        ],
      ),
    );
  }
}
