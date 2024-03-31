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
      child: Row(
        children: [],
      ),
    );
  }
}
