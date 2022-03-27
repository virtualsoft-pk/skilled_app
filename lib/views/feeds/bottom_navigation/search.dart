import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/search_result.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';


import '../../../model/search_model.dart';
import '../../../utils/app_colors.dart';

class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

  List<SearchModel> searchModel = [
    SearchModel(bacGroundImage: 'assets/webDesign.png', title: 'Web design'),
    SearchModel(bacGroundImage: 'assets/art.png', title: 'Art'),
    SearchModel(bacGroundImage: 'assets/coding.png', title: 'Coding'),
    SearchModel(bacGroundImage: 'assets/painting.png', title: 'Painting'),
    SearchModel(bacGroundImage: 'assets/aviation.png', title: 'Aviation'),
    SearchModel(bacGroundImage: 'assets/doctor.png', title: 'Doctor')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customBackButton(),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: greyColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: Image.asset(
                      'assets/Search.png',
                      cacheHeight: 18,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: lightGrey,
                      fontWeight: FontWeight.w500,
                    ),
                    hintText: 'Search career',
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent searches',
                      style: TextStyle(
                        fontSize: 16,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: const Text(
                        'Clear all',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: lightGrey,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),

                Wrap(
                  runSpacing: 10,
                  spacing: 24,
                  children: chiplist
                      .map(
                        (e) => InkWell(
                          onTap: (){
                            Get.to(() => SearchResult());
                          },
                          child: Chip(

                            labelPadding: EdgeInsets.all(10),
                            label: Text(
                              '${e}',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff494F58),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Popular On Skill-Ld',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.5),
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: (){
                         Get.to(() => SearchResult());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: Get.height * 0.12,
                        width: Get.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber,
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                              filterColor,
                              BlendMode.darken,
                            ),
                            fit: BoxFit.cover,
                            image: AssetImage(searchModel[i].bacGroundImage!),
                          ),
                        ),
                        child: Text(
                          searchModel[i].title!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: backgroundColor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List chiplist = [
    'UX/ Design',
    'Skillshare',
    'Udemy',
    'Best career for me',
    '2022 Career trends',
  ];
}
