part of '../onboardingpage.dart';

class BuildFooter extends StatelessWidget {
  final int index;
  final int dotsCount;
  final VoidCallback onTap;

  const BuildFooter({
    Key? key,
    required this.index,
    required this.dotsCount,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Positioned(
      bottom: 18,
      left: 18,
      right: 18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 70,
              height: 45,
              alignment: Alignment.center,
              child: Text(index == 2 ? '' : AppLocalizations.of(context)!.skip,
                  style: _theme.textTheme.headlineMedium),
            ),
          ),
          Expanded(
            child: Center(
              child: DotsIndicator(
                dotsCount: dotsCount,
                position: index.toDouble().toInt(),
                decorator: DotsDecorator(
                  activeColor: _theme.primaryColor,
                  activeSize: const Size(35, 9),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 70,
              height: 40,
              alignment: Alignment.center,
              child: Text(
                index == 2
                    ? AppLocalizations.of(context)!.next
                    : AppLocalizations.of(context)!.done,
                style: _theme.textTheme.headlineMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
