import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/utils/app_colors.dart';

class CompleteEvent extends StatefulWidget {
  const CompleteEvent({Key? key}) : super(key: key);

  @override
  _CompleteEventState createState() => _CompleteEventState();
}

class _CompleteEventState extends State<CompleteEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.only(top: 10,left: 16,right: 16,bottom: 12),
            height: Get.height*0.119,
            width: Get.width*0.9,

            decoration: BoxDecoration(
              color: tilecolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/images/img.png'),fit: BoxFit.cover,),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('2022 meetup'),
                    Text('By Likee',style: TextStyle(color: Colors.grey),),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                        width: 149,
                        height: 25,

                        decoration: BoxDecoration(
                          color: compltedcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('Completed 8 days ago',style: TextStyle(color: Colors.black,fontSize: 14),),
                        )),
                  ],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(left:0),
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      Showbottomsheet();

                    });
                  },
                  minWidth: 88,
                  height: 36,
                  //color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1,color: buttoncolor),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Text('Feedback'),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,bottom: 12),
            height: Get.height*0.119,
            width: Get.width*0.9,

            decoration: BoxDecoration(
              color: tilecolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/images/img_1.png'),fit: BoxFit.cover,),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('Game OF thrones'),
                    Text('By Netflix',style: TextStyle(color: Colors.grey),),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                        width: 149,
                        height: 25,

                        decoration: BoxDecoration(
                          color: compltedcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('Completed 5 days ago',style: TextStyle(color: Colors.black,fontSize: 14),),
                        )),
                  ],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(left:0),
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      Showbottomsheet();
                    });
                  },
                  minWidth: 88,
                  height: 36,
                  //color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1,color: buttoncolor),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Text('Feedback'),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,bottom: 12),
            height: Get.height*0.119,
            width: Get.width*0.9,

            decoration: BoxDecoration(
              color: tilecolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/images/img_2.png'),fit: BoxFit.cover,),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('Award show'),
                    Text('By Evento',style: TextStyle(color: Colors.grey),),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                        width: 149,
                        height: 25,

                        decoration: BoxDecoration(
                          color: compltedcolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('Completed 8 days ago',style: TextStyle(color: Colors.black,fontSize: 14),),
                        )),
                  ],
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(left:0),
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      Showbottomsheet();
                    });
                  },
                  minWidth: 88,
                  height: 36,
                  //color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1,color: buttoncolor),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Text('Feedback'),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }


  Showbottomsheet() {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        builder: (context)=> Container(
          // padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 63,right: 61,top: 49),
                child: Container(
                  child: Text('Rate your experience',style: TextStyle(fontSize:24 ,fontWeight:FontWeight.w500 ),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 358,
                padding: const EdgeInsets.only(left: 8,right: 9,),
                child: Column(
                  children: [
                    Text('How much did you enjoy this experience?',style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w500 ),),
                    Text('Select an appropriate rating below.',style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w500 ),),

                  ],
                ),

              ),
              SizedBox(
                height: 17.68,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,size: 32,color: Colors.orange,),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.star,size: 32,color: Colors.orange,),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.star,size: 32,color: Colors.orange,),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.star,size: 32,color: Colors.orange,),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.star_border,size: 32,),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 20),
                child: MaterialButton(
                    onPressed: () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (ctx)=> events_screen(),),);
                    },
                    minWidth:343,
                    height: 62,
                    color: buttoncolor,
                    visualDensity: VisualDensity.compact,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child:Text('SUBMIT',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),)
                ),
              ),
              SizedBox(
                height: 33,
              ),




            ],
          ),
        )

    );
  }
}
