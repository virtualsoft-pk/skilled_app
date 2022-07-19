import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/fields_name.dart';
import 'package:skilled_app/views/quiz/career_details.dart';
import 'package:skilled_app/views/responsive.dart';

import '../../widgets/custom_widgets.dart';

class SearchSuggestionScreen extends StatefulWidget {
  const SearchSuggestionScreen({Key? key}) : super(key: key);

  @override
  _SearchSuggestionScreenState createState() => _SearchSuggestionScreenState();
}

class _SearchSuggestionScreenState extends State<SearchSuggestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Responsive.isTablet(context)
          ? tabAppBar(title: "Select All The Careers You Are Interested In")
          : null,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal:
                        Responsive.isTablet(context) ? Get.width * 0.2 : 16),
                height: 48,
                decoration: BoxDecoration(
                    color: const Color(0xffF4F4F5),
                    borderRadius: BorderRadius.circular(12)),
                child: GetBuilder<_SuggestionController>(
                    init: _SuggestionController(),
                    builder: (controller) {
                      return TypeAheadField(
                        suggestionsBoxDecoration:
                            const SuggestionsBoxDecoration(
                                elevation: 0, color: Colors.transparent),
                        textFieldConfiguration: TextFieldConfiguration(
                            autofocus: true,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                                suffixIcon:
                                    const Icon(Icons.clear, color: Colors.grey),
                                contentPadding:
                                    const EdgeInsets.only(bottom: 10, left: 22),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)))),
                        suggestionsCallback: (pattern) async {
                          controller.updatePattern(pattern);
                          return getSuggestions(pattern);
                        },
                        itemBuilder: (context, String suggestion) {
                          return ListTile(
                            leading: const Icon(Icons.search),
                            title: Transform.translate(
                              offset: const Offset(-20, 0),
                              child: Text(suggestion),
                            ),
                          );
                        },
                        onSuggestionSelected: (suggestion) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Career()));
                        },
                      );
                    }))
          ],
        ),
      ),
    );
  }

  List<String> getSuggestions(String pattern) {
    return fieldNames
        .where(
            (element) => element.toLowerCase().contains(pattern.toLowerCase()))
        .toList();
  }
}

class _SuggestionController extends GetxController {
  String pattern = "";

  void updatePattern(String value) {
    pattern = value;
    update();
  }
}
