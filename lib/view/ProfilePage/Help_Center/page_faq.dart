import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import '../Widget/container_for_listTile.dart';
import '../Widget/search_container.dart';
import 'container_data_text.dart';
import 'faq_model.dart';

class PageFAQView extends StatefulWidget {
  const PageFAQView({Key? key, }) : super(key: key);
  @override
  State<PageFAQView> createState() => _PageFAQViewState();
}

class _PageFAQViewState extends State<PageFAQView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: ListView(
        children: [
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: containerData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        containerData
                            .forEach((element) => element.values = true);
                        containerData[index].values = !containerData[index].values!;
                      });
                    },
                    child: ContainerText(
                      data: containerData[index],
                    ),
                  );
                }),
          ),
          SizedBox(height: 20,),
          SearchContainer(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 600,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 20,),
                physics:  NeverScrollableScrollPhysics(),
                itemCount: faqData.length,
                itemBuilder: (context, index) =>
                    ContainerListTileView(
                      data: faqData[index],
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

