import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import '../Widget/container_for_listTile.dart';
import '../Widget/search_container.dart';
import 'container_data_text.dart';
import 'faq_model.dart';

class PageFAQView extends StatefulWidget {
  const PageFAQView({Key? key}) : super(key: key);

  @override
  State<PageFAQView> createState() => _PageFAQViewState();
}

class _PageFAQViewState extends State<PageFAQView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: containerData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          containerData
                              .forEach((element) => element.values = true);
                          containerData[index].values =
                          !containerData[index].values!;
                        });
                      },
                      child: ContainerText(
                        data: containerData[index],
                      ),
                    );
                  }),
            ),
            SearchContainer(),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                physics:  NeverScrollableScrollPhysics(),
                itemCount: faqData.length,
                itemBuilder: (context, index) =>
                    ContainerListTileView(
                      data: faqData[index],
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

