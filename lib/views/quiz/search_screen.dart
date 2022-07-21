import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:skilled_app/controller/nav_controller.dart';
import 'package:skilled_app/utils/fields_name.dart';
import 'package:skilled_app/views/quiz/career_details.dart';
import 'package:skilled_app/views/responsive.dart';

import '../../widgets/custom_widgets.dart';

class SearchSuggestionScreen extends StatefulWidget {
  const SearchSuggestionScreen({
    Key? key,
    this.isForDiscoverTab = false,
  }) : super(key: key);
  final isForDiscoverTab;

  @override
  _SearchSuggestionScreenState createState() => _SearchSuggestionScreenState();
}

class _SearchSuggestionScreenState extends State<SearchSuggestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Responsive.isTablet(context) && !widget.isForDiscoverTab
          ? tabAppBar(title: "Select All The Careers You Are Interested In")
          : null,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        Responsive.isTablet(context) ? Get.width * 0.025 : 0),
                child: Column(
                  children: [
                    if (Responsive.isTablet(context) && widget.isForDiscoverTab)
                      Padding(
                        padding: const EdgeInsets.only(top: 32, bottom: 32),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/image 29.png',
                            height: 20,
                          ),
                        ),
                      ),
                    SizedBox(
                      height: Responsive.isTablet(context) ? 14 : 32,
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                          horizontal: Responsive.isTablet(context) ? 0 : 16),
                      height: 48,
                      decoration: BoxDecoration(
                          color: const Color(0xffF4F4F5),
                          borderRadius: BorderRadius.circular(12)),
                      child: TypeAheadField(
                        suggestionsBoxDecoration:
                            const SuggestionsBoxDecoration(
                                elevation: 0, color: Colors.transparent),
                        textFieldConfiguration: TextFieldConfiguration(
                            autofocus: true,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(Icons.clear,
                                        color: Colors.grey)),
                                contentPadding:
                                    const EdgeInsets.only(bottom: 10, left: 22),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)))),
                        suggestionsCallback: (pattern) async {
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
                          if (Responsive.isMobile(context)) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Career()));
                          } else {
                            final NavController _controller = Get.find();
                            _controller.updateDiscoverIndex(0);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (Responsive.isTablet(context)) SizedBox(width: Get.width * 0.25)
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
