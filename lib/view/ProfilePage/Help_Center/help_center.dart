import 'package:flutter/material.dart';
import 'package:my_final_progict/view/ProfilePage/Help_Center/page_contact_us.dart';
import 'package:my_final_progict/view/ProfilePage/Help_Center/page_faq.dart';

import '../../../conestant/conset.dart';
import '../../../widget/appbar_widget.dart';

class HelpCenterView extends StatefulWidget {
  const HelpCenterView({Key? key, required this.x}) : super(key: key);
  final int x;

  @override
  State<HelpCenterView> createState() => _HelpCenterViewState();
}

@override
class _HelpCenterViewState extends State<HelpCenterView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    _tabController = new TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        children: [
          AppBarWidget(title: "Help Center"),
          DefaultTabController(
            length: 2,
            initialIndex: 1,
            child: TabBar(
              controller: _tabController,
              labelColor: Color(0xff2E91EF),
              tabs: [
                Tab(
                  text: 'FAQ',
                ),
                Tab(
                  text: 'contact us',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                PageFAQView(),
                ContactUsView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
