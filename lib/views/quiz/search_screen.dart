import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:skilled_app/utils/fields_name.dart';
import 'package:skilled_app/views/quiz/career_details.dart';

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
      body: SafeArea(
        child: Column(
          children: [
           Container(
             width: double.infinity,
             margin: EdgeInsets.symmetric(horizontal: 16),
             height: 48,
             color: Color(0xffF4F4F5),
             child:  TypeAheadField(

               suggestionsBoxDecoration: SuggestionsBoxDecoration(
                 elevation: 0,
                 color: Colors.transparent
               ),

               textFieldConfiguration: TextFieldConfiguration(

                   autofocus: true,

                   decoration: InputDecoration(

                     suffixIcon: Icon(Icons.clear),
                        contentPadding: EdgeInsets.only(bottom: 10,left: 10),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12)
                       )
                   )
               ),

               suggestionsCallback: (pattern) async {
                 return await getSuggestions(pattern);
               },
               itemBuilder: (context, String suggestion) {
                 return


                   ListTile(

                   leading: Icon(Icons.search),
                   title:   Transform.translate(
                   offset: Offset(-20, 0),
                 child: Text(suggestion),
                 ),
                 );
               },
               onSuggestionSelected: (suggestion) {
                 Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => Career()
                 ));
               },
             ),
           )
          ],
        ),
      ),
    );
  }

  List<String> getSuggestions(String pattern) {
    return fieldNames.where((element) => element.toLowerCase().contains(pattern.toLowerCase())).toList();
  }
}
