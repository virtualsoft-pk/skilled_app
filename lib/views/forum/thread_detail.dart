import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/feeds/bottom_navigation/bottom_navigation.dart';
import 'package:skilled_app/views/forum/quiz_06.dart';
import 'package:skilled_app/views/forum/quiz_07.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';
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
        count: '2.1k',
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
        count: '2.1k',
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
        color: Color(0xffE4F0EE),
        message: 'assets/img_13.png',
        number: '212',
        heart: 'assets/img_12.png',
        count: '2.1k',
        design3: 'web design',
        dgn2: 'Motion',
        image: 'assets/img_10.png',
        name: 'Hashir shah',
        date: 'Monday at 2:00AM',
        design: 'UI/UIX',
        desc: '13 best Skillshare classes for designers and artists?',
        desc2:
            'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
  ];
  bool isFollow = false;

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 10),
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
            child: Column(
              children: [
                SizedBox(height: screenheight * 0.02),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/img_7.png',
                            ),
                            width: screenwidth * 0.28,
                            height: 18,
                          ),
                          // SizedBox(
                          //   width: screenwidth * 0.5,
                          // ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.off(() => BottomNavigation(
                                    index: 2,
                                  ));
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
                        ],
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
                        height: screenheight * 0.02,
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
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
                          isFollow == false
                              ? Container(
                                  alignment: Alignment.center,
                                  width: 110,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(width: 1.5),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(),
                                    onPressed: () {
                                      isFollow = true;
                                      setState(() {});
                                    },
                                    child: Text(
                                      'Follow',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  alignment: Alignment.center,
                                  width: 110,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(),
                                    onPressed: () {
                                      isFollow = false;
                                      setState(() {});
                                    },
                                    child: Text(
                                      'Following',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff8D9196),
                                      ),
                                    ),
                                  ),
                                )
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
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 37,
                                      width: 37,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(42),
                                        color: Colors.grey,
                                      ),
                                      child: Image(
                                          image: AssetImage(
                                              '${post[index].image}')),
                                    ),
                                    SizedBox(
                                      width: screenwidth * 0.04,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        myText(
                                            text: '${post[index].name}',
                                            style: GoogleFonts.manrope(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        myText(
                                            text: '${post[index].date}',
                                            style: GoogleFonts.manrope(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: dividercolor)),
                                      ],
                                    ),
                                    Spacer(),
                                    PopupMenuButton(
                                      itemBuilder: (context) => [
                                        PopupMenuItem(
                                          child: Text("First"),
                                          value: 1,
                                        ),
                                        PopupMenuItem(
                                          child: Text("Second"),
                                          value: 2,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenheight * 0.02,
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.to(
                                              () => PopularThread(
                                                title: 'UI/UIX',
                                              ),
                                            );
                                            print('object');
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            width: screenwidth * 0.21,
                                            height: screenheight * 0.04,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color(0xffFFE2DC),
                                              // border: Border.all(
                                              //   color: backcolor,
                                              // ),
                                            ),
                                            child: Center(
                                              child: myText(
                                                  text: '${post[index].design}',
                                                  style: GoogleFonts.manrope(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black)),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenwidth * 0.02,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Get.to(() => PopularThread(
                                                  title: 'Motion',
                                                ));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            width: screenwidth * 0.21,
                                            height: screenheight * 0.04,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color(0xffFDE3CC),
                                                border: Border.all(
                                                    color: backcolor)),
                                            child: Center(
                                                child: Text(
                                                    '${post[index].dgn2}')),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screenwidth * 0.02,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Get.to(() => PopularThread(
                                                  title: 'Web Design',
                                                ));
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(left: 5),
                                            width: screenwidth * 0.3,
                                            height: screenheight * 0.045,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color(0xffE4F0EE),
                                              // border: Border.all(
                                              //     color: backcolor),
                                            ),
                                            child: Center(
                                                child: Text(
                                                    '${post[index].design3}')),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenheight * 0.02,
                                    ),
                                    myText(
                                        text: '${post[index].desc}',
                                        style: GoogleFonts.manrope(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      height: screenheight * 0.01,
                                    ),
                                    myText(
                                        text: '${post[index].desc2}',
                                        style: GoogleFonts.manrope(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    SizedBox(
                                      height: screenheight * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              '${post[index].heart}'),
                                          width: 17.5,
                                          height: 15,
                                        ),
                                        SizedBox(
                                          width: screenwidth * 0.02,
                                        ),
                                        myText(text: '${post[index].count}'),
                                        SizedBox(
                                          width: screenwidth * 0.04,
                                        ),
                                        Image(
                                          image: AssetImage(
                                              '${post[index].message}'),
                                          width: 17.5,
                                          height: 15,
                                        ),
                                        SizedBox(
                                          width: screenwidth * 0.02,
                                        ),
                                        myText(text: '${post[index].number}'),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenheight * 0.03,
                                    ),
                                  ],
                                ),
                              ),
                            ]);
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
