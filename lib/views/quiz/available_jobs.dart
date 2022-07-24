import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:skilled_app/views/quiz/all_careers.dart';
import 'package:skilled_app/views/responsive.dart';
import 'package:skilled_app/widgets/custom_button.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          Responsive.isMobile(context) ? 80 : 80,
        ),
        child: AppBar(
            centerTitle: Responsive.isMobile(context) ? true : false,
            elevation: 0,
            title: Padding(
              padding:
                  EdgeInsets.only(top: Responsive.isMobile(context) ? 22 : 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Available Jobs",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  Text(
                    "www.google.com",
                    style: TextStyle(color: grey900, fontSize: 12),
                  )
                ],
              ),
            ),
            leading: Padding(
              padding:
                  EdgeInsets.only(top: Responsive.isMobile(context) ? 22 : 0),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.clear, color: Colors.black),
              ),
            ),
            backgroundColor: Color(0xffF4F4F5)),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.isTablet(context) ? 62 : 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.03),
              Text(
                "“UX Designer” job post near me",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: Get.height * 0.03),
              if (Responsive.isMobile(context))
                Column(
                  children: [
                    _JobTile(),
                    _JobTile(),
                    _JobTile(),
                  ],
                ),
              if (Responsive.isTablet(context))
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _JobTile(),
                        _JobTile(),
                        _JobTile(),
                        const SizedBox(width: 16),
                      ],
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _JobTile(),
                        _JobTile(),
                        _JobTile(),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ],
                ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              _SeeMoreJobsButton(),
              SizedBox(height: 22),
              SizedBox(
                  width: Responsive.isTablet(context)
                      ? Get.width * 0.7
                      : Get.width * 1,
                  child: _Description()),
              if (Responsive.isTablet(context))
                SizedBox(height: Get.height * 0.1),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: Responsive.isTablet(context)
                      ? Get.width * 0.6
                      : Get.width,
                  child: CustomButton(
                    text: "ADDED TO CAREER LIST",
                    funct: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.off(() => const AllCareers());
                  },
                  child: Text(
                    'BACK TO CAREER',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What’s my career list",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Get.height * 0.02),
        Text(
          "It is a list of careers you are interested in learning more about. Based off this list, Skilld’s algorithm creates you a personalised feed (including podcasts,   books, videos, competitions etc.) that allow you to learn about different industries, and how to get be successful in that job.",
          style: TextStyle(height: 1.4),
        ),
        SizedBox(
          height: Get.height * 0.025,
        ),
      ],
    );
  }
}

class _SeeMoreJobsButton extends StatelessWidget {
  const _SeeMoreJobsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: Get.width * 0.30,
          height: Get.height * 0.06,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text("See more 30+"),
          ),
        ),
      ],
    );
  }
}

class _JobTile extends StatelessWidget {
  const _JobTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F5),
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("assets/Group@2x.png"))),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lead UX Designer",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              // SizedBox(height: Get.height * 0.01),
              Text(
                "Snapdocs",
                style: TextStyle(fontSize: 15),
              ),
              // SizedBox(height: Get.height * 0.01),
              Text(
                "United States",
                style: TextStyle(
                    fontSize: 15, color: Colors.grey.withOpacity(0.9)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
