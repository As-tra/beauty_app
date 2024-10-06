import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/assets.dart';
import 'package:beauty_app/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  List<IconData> iconList = [
    Icons.home,
    Icons.category_outlined,
    Icons.chat,
    Icons.person,
  ];
  List<Widget> views = const [
    HomeViewBody(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: kPrimary,
        child: Image.asset(
          Assets.imagesCartIcon,
          color: kTertiary,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (index, isActive) {
          return Icon(
            iconList[index],
            color: isActive ? Colors.white : kTertiary,
            size: isActive ? 28 : 24,
          );
        },
        activeIndex: currentIndex,
        backgroundColor: kPrimary,
        
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() => currentIndex = index),
        //other params
      ),
    );
  }
}
