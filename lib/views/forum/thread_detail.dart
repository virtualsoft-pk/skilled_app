import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/forum/create_post.dart';
import 'package:skilled_app/views/forum/post_tile.dart';
import 'package:skilled_app/views/forum/quiz_07.dart';
import 'package:skilled_app/views/responsive.dart';

import '../../model/aboutmodel.dart';
import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';
import '../settings/notification.dart';

class PopularThread extends StatefulWidget {
  String? title;
  PopularThread({this.title});
  @override
  _PopularThreadState createState() => _PopularThreadState();
}

class _PopularThreadState extends State<PopularThread> {
  List<Post> post = [
    Post(
        color: Color(0xffFFE2DC),
        message: 'assets/img_13.png',
        number: '212',
        heart: 'assets/img_12.png',
        count: 342,
        design3: 'web design',
        dgn2: 'Motion',
        image: 'assets/img_10.png',
        name: 'Hashir shah',
        date: 'Monday at 2:00AM',
        design: 'UI/UIX',
        desc: '13 best Skillshare classes for designers and artists?',
        desc2:
            'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
    Post(
        color: Color(0xffFDE3CC),
        message: 'assets/img_13.png',
        number: '212',
        heart: 'assets/img_12.png',
        count: 135,
        design3: 'web design',
        dgn2: 'Motion',
        image: 'assets/img_10.png',
        name: 'Hashir shah',
        date: 'Monday at 2:00AM',
        design: 'UI/UIX',
        desc: '13 best Skillshare classes for designers and artists?',
        desc2:
            'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
    // Post(
    //     color: Color(0xffE4F0EE),
    //     message: 'assets/img_13.png',
    //     number: '212',
    //     heart: 'assets/img_12.png',
    //     count: '2.1k',
    //     design3: 'web design',
    //     dgn2: 'Motion',
    //     image: 'assets/img_10.png',
    //     name: 'Hashir shah',
    //     date: 'Monday at 2:00AM',
    //     design: 'UI/UIX',
    //     desc: '13 best Skillshare classes for designers and artists?',
    //     desc2:
    //         'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
  ];
  bool isFollow = false;
  bool isLike = false;
  bool isLikw1 = false;
  double val = 2.1;
  double val1 = 1.8;
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(
          right: Responsive.isTablet(context) ? 32 : 10,
          bottom: Responsive.isTablet(context) ? 64 : 0,
        ),
        height: screenheight * 0.07,
        width: screenwidth * 0.14,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => CreatePostOnForum()));
          },
          backgroundColor: primaryColor,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.isTablet(context) ? Get.width * 0.1 : 0,
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Responsive.isTablet(context) ? 32 : 15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                bottom: Get.height * 0.02,
                                top: 5,
                              ),
                              padding: const EdgeInsets.all(12),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: greyColor,
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(2.5),
                                child: Image.asset(
                                  'assets/back.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Image(
                            image: AssetImage(
                              'assets/image 29.png',
                            ),
                            height: 20,
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Get.to(() => Notifications());
                            },
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.grey[200],
                              child: Image(
                                  image: AssetImage('assets/img_8.png'),
                                  width: 18),
                            ),
                          ),
                        ],
                      ),
                      if (Responsive.isTablet(context))
                        SizedBox(
                          height: screenheight * 0.02,
                        ),
                      Container(
                        height: screenheight * 0.07,
                        width: screenwidth * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22)),
                        child: TextFormField(
                          readOnly: true,
                          onTap: () {
                            Get.to(() => SearchOnForum());
                          },
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            errorBorder: InputBorder.none,
                            errorStyle: TextStyle(fontSize: 0, height: 0),
                            focusedErrorBorder: InputBorder.none,
                            fillColor: Colors.deepOrangeAccent[2],
                            filled: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            hintText: ('Search in forum'),
                            prefixIcon: Icon(
                              Icons.search,
                              color: dividercolor,
                            ),
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      SizedBox(
                        height: screenheight * 0.02,
                      ),
                      Row(
                        children: [
                          myText(
                            text: widget.title,
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),

                          InkWell(
                            onTap: () {
                              isFollow = !isFollow;
                              setState(() {});
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Colors.grey.shade300,
                                    offset: const Offset(0, 1),
                                    spreadRadius: 1,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: isFollow == false
                                  ? Image.asset('assets/icons/plus.png')
                                  : Image.asset(
                                      'assets/icons/heartBlack.png',
                                    ),
                            ),
                          ),

                          // isFollow == false
                          //     ? Container(
                          //         alignment: Alignment.center,
                          //         width: 110,
                          //         height: 35,
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(40),
                          //           border: Border.all(width: 1.5),
                          //         ),
                          //         child: TextButton(
                          //           style: TextButton.styleFrom(),
                          //           onPressed: () {
                          //             isFollow = true;
                          //             setState(() {});
                          //           },
                          //           child: Text(
                          //             'Follow',
                          //             style: TextStyle(
                          //               fontSize: 12,
                          //               fontWeight: FontWeight.w700,
                          //               color: Colors.black,
                          //             ),
                          //           ),
                          //         ),
                          //       )
                          //     : Container(
                          //         alignment: Alignment.center,
                          //         width: 110,
                          //         height: 35,
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(40),
                          //           border: Border.all(color: Colors.white),
                          //         ),
                          //         child: TextButton(
                          //           style: TextButton.styleFrom(),
                          //           onPressed: () {
                          //             isFollow = false;
                          //             setState(() {});
                          //           },
                          //           child: Text(
                          //             'Following',
                          //             style: TextStyle(
                          //               fontSize: 12,
                          //               fontWeight: FontWeight.w700,
                          //               color: Color(0xff8D9196),
                          //             ),
                          //           ),
                          //         ),
                          //       )
                        ],
                      ),
                      SizedBox(
                        height: screenheight * 0.02,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: screenheight * 0.02,
                ),
                Container(
                  width: double.infinity,
                  //height: screenheight*0.7,
                  //margin: EdgeInsets.only(top: 10),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: post.length,
                      itemBuilder: (context, index) {
                        return PostTile(
                            post: post[index], screenheight: screenheight);
                      }),
                ),

                // Stack(
                //   children:
                //   Positioned(
                //     right: 20,
                //     child:  InkWell(
                //       onTap: (){
                //         Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Quiz_06()));
                //       },
                //       child: Container(
                //           height: screenheight*0.07,
                //           width: screenwidth*0.14,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(42),
                //               color: AppColors.primaryColor),
                //           child: Icon(Icons.add)
                //       ),
                //     ),,
                //   )
                //
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
