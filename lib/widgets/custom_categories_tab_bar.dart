import 'package:beauty_app/constants.dart';
import 'package:beauty_app/utils/style.dart';
import 'package:flutter/material.dart';

class CustomCategoriesTabBar extends StatefulWidget {
  const CustomCategoriesTabBar({super.key});

  @override
  State<CustomCategoriesTabBar> createState() => _CustomCategoriesTabBarState();
}

class _CustomCategoriesTabBarState extends State<CustomCategoriesTabBar>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: kCategories.length, vsync: this);
    _tabController.addListener(
      () {
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: kCategories.length,
      child: Column(
        children: [
          TabBar(
            labelPadding: const EdgeInsets.only(right: 12),
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicator: const BoxDecoration(),
            dividerHeight: 0,
            tabs: kCategories.asMap().entries.map((entry) {
              int index = entry.key;
              String e = entry.value;
              return Tab(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:
                        index == _tabController.index ? kPrimary : kSecondary,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    e,
                    style: Style.openSansSemiBold16.copyWith(
                      color:
                          index == _tabController.index ? kSecondary : kPrimary,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: TabBarView(
              children: List.generate(
                kCategories.length,
                (index) {
                  return const SizedBox();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
