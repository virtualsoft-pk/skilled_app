import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:skilled_app/views/quiz/quiz2.dart';
import 'package:skilled_app/views/quiz/quiz4.dart';

import '../../model/about_model.dart';
import '../../widgets/hashir.dart';

bool iscolored = false;

class Quiz03 extends StatefulWidget {
  @override
  _Quiz03State createState() => _Quiz03State();
}

class _Quiz03State extends State<Quiz03> {
  List<Choice> choice = [
    Choice(name: 'Programming', operator: '+'),
    Choice(name: 'C++', operator: '-'),
    Choice(name: 'Creative writing', operator: '-'),
    Choice(name: 'Dance', operator: '-'),
    Choice(name: 'Product Design', operator: '-'),
    Choice(name: 'Grapic design', operator: '+'),
    Choice(name: 'C', operator: '+'),
    Choice(name: 'Design', operator: '+'),
    Choice(name: 'Language', operator: '+'),
  ];

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: screenheight * 0.02),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (ctx) => Quiz02()));
                      },
                      child: CircleAvatar(
                        radius: 22.0,
                        backgroundColor: Colors.grey[200],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenwidth * 0.3,
                    ),
                    myText(
                        text: "Quiz",
                        style: GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                SizedBox(
                  height: screenheight * 0.03,
                ),
                myText(
                    text:
                        "Select any of these that you are interested in learning",
                    style: GoogleFonts.manrope(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),

                MultiSelectChipDisplay(

                  colorator: (String v) {
// return Colors.green;
                  },

                  //chipColor: Colors.red,
                  items: choice
                      .map((e) => MultiSelectItem(
                            e.operator,
                            e.name,

                          ))
                      .toList(),

                  onTap: (value) {

                    setState(() {

                    });
                  },
                ),

                // MultiSelectBottomSheetField<Choice>(
                //   initialChildSize: 0.4,
                //   listType: MultiSelectListType.CHIP,
                //   searchable: true,
                //   buttonText: Text("Favorite Animals"),
                //   title: Text("Animals"),
                //   items: choice.map((e) => MultiSelectItem(e, e.name)).toList(),
                //   onConfirm: (values) {
                //     choice = values;
                //   },
                //   chipDisplay: MultiSelectChipDisplay(
                //     onTap: (value) {
                //       setState(() {
                //         // _selectedAnimals2.remove(value);
                //       });
                //     },
                //   ),
                // ),
                // choice == null || choice.isEmpty
                //     ? Container(
                //     padding: EdgeInsets.all(10),
                //     alignment: Alignment.centerLeft,
                //     child: Text(
                //       "None selected",
                //       style: TextStyle(color: Colors.black54),
                //     ))
                //      Container(),
                // MultiSelectChipField(
                //   items: choice.map((e) => MultiSelectItem(e.operator, e.name)).toList(),
                //
                //   // initialValue: ,
                //   title: Text("Animals"),
                //   headerColor: Colors.blue.withOpacity(0.5),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: Colors.blue, width: 1.8),
                //   ),
                //   selectedChipColor: Colors.blue.withOpacity(0.5),
                //   selectedTextStyle: TextStyle(color: Colors.blue[800]),
                //   onTap: ( values) {
                //     //_selectedAnimals4 = values;
                //   },
                // ),
                // MultiSelectDialogField
                //
                //   (
                //   items: choice.map((e) => MultiSelectItem(e, e.name)).toList(),
                //     listType: MultiSelectListType.CHIP,
                //   //title: Text("Animals"),
                //   selectedColor: Colors.blue,
                //   decoration: BoxDecoration(
                //     color: Colors.blue.withOpacity(0.1),
                //     borderRadius: BorderRadius.all(Radius.circular(40)),
                //     border: Border.all(
                //       color: Colors.blue,
                //       width: 2,
                //     ),
                //   ),
                //
                //   onConfirm: (results) {
                //     //_selectedAnimals = results;
                //   },
                // ),
                // MultiSelectChipField<Choice>(
                //     items:choice.map((e) => MultiSelectItem(e, e.name)).toList(),
                //
                // key: _multiSelected,
                // validator: (values) {...}
                // itemBuilder: (item, state) {
                //       // return your custom widget here
                //       return InkWell(
                //       onTap: () {
                // _selectedAnimals.contains(item.value)
                // ? _selectedAnimals.remove(item.value)
                //     : _selectedAnimals.add(item.value);
                // state.didChange(_selectedAnimals);
                // _multiSelectKey.currentState.validate();
                // },
                //   child: Text(item.value.name),
                //);
                //},
                // ),
                // Container(
                //   height:  400,
                //   width: 600,
                //   child: MultiSelectDialogField<Choice>(
                //     items: choice.map((e) => MultiSelectItem(e, e.name)).toList(),
                //     listType: MultiSelectListType.CHIP,
                //     onConfirm: (values) {
                //       choice = values;
                //     },
                //   ),
                // ),
                // MultiSelectDialogField(
                //   items: _item,
                //   title: Text("Animals"),
                //   selectedColor: Colors.blue,
                //   decoration: BoxDecoration(
                //     color: Colors.blue.withOpacity(0.1),
                //     borderRadius: BorderRadius.all(Radius.circular(40)),
                //     border: Border.all(
                //       color: Colors.blue,
                //       width: 2,
                //     ),
                //   ),
                //   buttonIcon: Icon(
                //     Icons.pets,
                //     color: Colors.blue,
                //   ),
                //   buttonText: Text(
                //     "Favorite Animals",
                //     style: TextStyle(
                //       color: Colors.blue[800],
                //       fontSize: 16,
                //     ),
                //   ),
                //   onConfirm: (results) {
                //     //_selectedAnimals = results;
                //   },
                // ),
                //
                //
                //

                SizedBox(
                  height: screenheight * 0.28,
                ),

                Container(
                    width: screenwidth*3,
                    height: screenheight*0.09,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: elevatedButton(text: "NEXT",onpress: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>Quiz_04()));})
                )
              ],
            ),
          ),
        ));
  }
}
