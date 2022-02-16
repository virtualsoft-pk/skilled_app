import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skilled_app/views/forum/quiz_06.dart';

import '../../model/aboutmodel.dart';
import '../../utils/app_colors.dart';
import '../../widgets/hashir.dart';


class Quiz_05 extends StatefulWidget {
  @override
  _Quiz_05State createState() => _Quiz_05State();
}

class _Quiz_05State extends State<Quiz_05> {

  List<Post> post = [
    Post(message: 'assets/img_13.png',number: '212',heart:'assets/img_12.png',count: '2.1k',design3: 'web design',dgn2: 'Motion',image: 'assets/img_10.png', name: 'Hashir shah',date: 'Monday at 2:00AM',design: 'UI/UIX',desc: '13 best Skillshare classes for designers and artists?',desc2: 'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
    Post(message: 'assets/img_13.png',number: '212',heart:'assets/img_12.png',count: '2.1k',design3: 'web design',dgn2: 'Motion',image: 'assets/img_10.png', name: 'Hashir shah',date: 'Monday at 2:00AM',design: 'UI/UIX',desc: '13 best Skillshare classes for designers and artists?',desc2: 'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
    Post(message: 'assets/img_13.png',number: '212',heart:'assets/img_12.png',count: '2.1k',design3: 'web design',dgn2: 'Motion',image: 'assets/img_10.png', name: 'Hashir shah',date: 'Monday at 2:00AM',design: 'UI/UIX',desc: '13 best Skillshare classes for designers and artists?',desc2: 'We’ve noticed a bunch of talented designers and illustrators jumping onto Skillshare to... Read more'),
  ];
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 10),
        height: screenheight*0.07,
        width: screenwidth*0.14,
        child: FloatingActionButton(
          shape: OutlineInputBorder(borderSide: BorderSide.none,
             borderRadius: BorderRadius.circular(42),
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Quiz_06()));
          },
          backgroundColor: primaryColor,
          child:  Icon(Icons.add,color: Colors.black,),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child:
            Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: screenheight * 0.02),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/img_7.png',),width: screenwidth*0.28,height: 18,
                  ),
                  SizedBox(
                    width: screenwidth * 0.5,
                  ),
                  CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.grey[200],
                    child:
                        Image(image: AssetImage('assets/img_8.png'), width: 18),
                  ),
                ],
              ),
              SizedBox(
                height: screenheight * 0.03,
              ),
              Container(
                height: screenheight * 0.07,
                width: screenwidth * 0.9,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(22)),
                child: TextFormField(
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
                    prefixIcon: Icon(Icons.search,color: dividercolor,),

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
              Row(
                children: [
                  myText(
                      text: 'Popular Thread',
                      style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ))
                ],
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myText(
                      text: 'A-Level Options ',
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: arrow,
                  )
                ],
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Divider(
                thickness: 0.3,
                color: dividercolor,
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myText(
                      text: 'Computer Science',
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: arrow,
                  )
                ],
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Divider(
                thickness: 0.3,
                color: dividercolor,
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myText(
                      text: 'Workshops',
                      style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: arrow,
                  )
                ],
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Divider(
                thickness: 0.3,
                color: dividercolor,
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),
              Container(
                height: screenheight * 0.06,
                width: screenwidth * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    border: Border.all(color: greycolor)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: myText(
                      text: 'See more',
                      style: GoogleFonts.manrope(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              SizedBox(
                height: screenheight * 0.01,
              ),
              Row(
                children: [
                  myText(
                      text: 'Last Post',
                      style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ))
                ],
              ),
              SizedBox(
                height: screenheight * 0.02,
              ),

              SizedBox(
                height:screenheight*0.02 ,
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
                    itemBuilder: (context,index){
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 37,
                                  width: 37,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(42),
                                      color: Colors.grey),
                                  child: Image(image: AssetImage('${post[index].image}')
                                  ),
                                ),
                                SizedBox(
                                  width: screenwidth * 0.04,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    myText(
                                        text:'${post[index].name}',
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 160),
                                  child: Image(
                                    image: AssetImage('assets/img_11.png'),
                                    width: 10,
                                    height: 25,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenheight*0.02,
                            ),
                   Row(
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 5),
                         width: screenwidth*0.21,
                         height: screenheight*0.04,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                             color: backcolor,
                             border: Border.all(color: backcolor)
                         ),
                         child:  Center(
                           child: myText(
                               text: '${post[index].design}',
                               style: GoogleFonts.manrope(
                                   fontSize: 12,
                                   fontWeight: FontWeight.w400,
                                   color: Colors.black)),
                         ),
                       ),
                       SizedBox(
                         width:screenwidth*0.02 ,
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 5),
                         width: screenwidth*0.21,
                         height: screenheight*0.04,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                             color: backcolor,
                             border: Border.all(color: backcolor)
                         ),
                         child:
                         Center(
                           child: Text('${post[index].dgn2}')
                         ),
                       ),
                       SizedBox(
                         width:screenwidth*0.02 ,
                       ),
                       Container(
                         margin: EdgeInsets.only(left: 5),
                         width: screenwidth*0.3,
                         height: screenheight*0.045,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                             color: backcolor,
                             border: Border.all(color: backcolor)
                         ),
                         child:
                         Center(
                             child: Text('${post[index].design3}')
                         ),
                       ),
                     ],
                   ),
                            SizedBox(
                              height: screenheight*0.02,
                            ),

                            myText(
                                text: '${post[index].desc}',
                                style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                            SizedBox(
                              height: screenheight*0.01,
                            ),
                            myText(
                                text: '${post[index].desc2}',

                                style: GoogleFonts.manrope(

                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,)
                            ),
                            SizedBox(
                              height: screenheight*0.02,
                            ),
                            Row(
                              children: [
                                Image(
                                  image: AssetImage('${post[index].heart}'),
                                  width: 17.5,
                                  height: 15,
                                ),
                                SizedBox(
                                  width: screenwidth*0.02,
                                ),
                                myText(text: '${post[index].count}'),
                                SizedBox(
                                  width: screenwidth*0.04,
                                ),
                                Image(
                                  image: AssetImage('${post[index].message}'),
                                  width: 17.5,
                                  height: 15,
                                ),
                                SizedBox(
                                  width: screenwidth*0.02,
                                ),
                                myText(text: '${post[index].number}'),
                              ],
                            ),
                            SizedBox(
                              height: screenheight*0.03,
                            ),
                        ] );
                    }
                ),
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
        )),
      ),
    );
  }
}
