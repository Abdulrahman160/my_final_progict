import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';
import 'package:my_final_progict/view/ProfilePage/Page_Language/language_model.dart';
import '../../../widget/appbar_widget.dart';
import '../Widget/search_container.dart';
import 'language_container.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              AppBarWidget(title: 'Language'),
              SearchContainer(),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: language.length,
                  itemBuilder: (context, index) => LanguageContainer(
                    data: language[index],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
