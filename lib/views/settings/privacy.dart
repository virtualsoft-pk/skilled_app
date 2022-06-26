import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/settings/notification.dart';
import 'package:skilled_app/widgets/custom_button.dart';
import 'package:skilled_app/widgets/custom_widgets.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customBackButton(() {}),
                              Text(
                                "Privacy & Terms ",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.transparent,
                              )
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.04,
                          ),
                          Text(
                            "Privacy & Terms",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Text("Last update january 03, 2022"),
                          SizedBox(
                            height: Get.height * 0.043,
                          ),
                          Row(
                            children: [
                              Container(
                                width: Get.width * 0.02,
                                height: Get.height * 0.01,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffFBC799),
                                ),
                              ),
                              SizedBox(
                                width: Get.width * 0.02,
                              ),
                              Text(
                                "Privacy policy",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.016,
                    ),

                    Text(
                      'Skilld built the Skilld app as a Free app. This SERVICE is provided by Skilld at no cost and is intended for use as is.\nThis page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.\n If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy. \nThe terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Skilld unless otherwise defined in this Privacy Policy. ',
                      style: TextStyle(
                        fontSize: 11,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.037,
                    ),

                    Text(
                      'Information Collection and Use',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to date of birth. This is so that we can give you a personalised experience and show you age related content and the information that we request will be retained by us and used as described in this privacy policy. The app does use third-party services that may collect information used to identify you.\nLink to the privacy policy of third-party service providers used by the app ',
                      style: TextStyle(
                        fontSize: 11,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'ADD THIRD PARTY INFORMATION HERE\nADD DESCRIPTION OF ALL THIRD PARTY INFORMATION ',
                      style: TextStyle(
                        fontSize: 13,
                        height: 2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Cookies',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Cookies Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.',
                      style: TextStyle(
                        fontSize: 11,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'ADD INFORMATION ON WHAT COOKIES THE AP USES ',
                      style: TextStyle(
                        fontSize: 13,
                        height: 2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Service Providers',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'We may employ third-party companies and individuals due to the following reasons:\nTo facilitate our Service;\nTo provide the Service on our behalf;\nTo perform Service-related services;\nor To assist us in analyzing how our Service is used.\nWe want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.',
                      style: TextStyle(
                        fontSize: 11,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Security ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.',
                      style: TextStyle(
                        fontSize: 11,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Links to Other Sites ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.',
                      style: TextStyle(
                        fontSize: 11,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Children’s Privacy',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'These Services are available to any age, and if you see any content you perceive to be inappropriate for any age group, please do not hesitate to contact us through the contact us section of this app.',
                      style: TextStyle(
                        fontSize: 11,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Changes to This Privacy Policy',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. This policy is effective as of LAUNCH DATE ',
                      style: TextStyle(
                        fontSize: 11,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    Text(
                      'Credits',
                      style: TextStyle(
                        fontSize: 13,
                        height: 2.4,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff494F58),
                      ),
                    ),



                    Text(
                      'https://icons8.com ',
                      style: TextStyle(
                        fontSize: 13,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),

                    Text(
                      'https://flaticon.com ',
                      style: TextStyle(
                        fontSize: 13,
                        height: 2.4,
                        color: Color(0xff494F58),
                      ),
                    ),


                    SizedBox(
                      height: 100,
                    )
                    // InkWell(
                    //   onTap: (){
                    //     Get.to(Notifications());
                    //   },
                    //   child: Container(
                    //     width: Get.width*0.9,
                    //     height: Get.height*0.09,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(15),
                    //         color: Color(0xffFBC799)
                    //     ),
                    //     child: Center(child: Text("OKAY, GOT IT",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 2.6),)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(
                  text: "OKAY, GOT IT",
                  funct: () {
                    Get.back();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
