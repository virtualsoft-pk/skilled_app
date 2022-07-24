import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilled_app/controller/tagcontroller.dart';
import 'package:skilled_app/utils/app_colors.dart';
import 'package:textfield_tags/textfield_tags.dart';

enum TagType { post, career, other }

class TagField extends StatefulWidget {
  const TagField({Key? key, required this.tagType}) : super(key: key);
  final TagType tagType;

  @override
  State<TagField> createState() => _TagFieldState();
}

class _TagFieldState extends State<TagField> {
  // late double _distanceToField;
  late final TextfieldTagsController _controller = TextfieldTagsController();
  late final TagController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.find<TagController>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _distanceToField = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: greyColor,
      ),
      child: TextFieldTags(
        textfieldTagsController: _controller,
        initialTags: getInitialTags(widget.tagType),
        textSeparators: const [','],
        letterCase: LetterCase.normal,
        validator: (String tag) {
          if (_controller.getTags != null && _controller.getTags!.length >= 5) {
            return null;
          }
          if (_controller.getTags!.contains(tag)) {
            return 'you already entered that';
          }
          return null;
        },
        inputfieldBuilder: (context, tec, fn, error, onChanged, onSubmitted) {
          return ((context, sc, tags, onTagDelete) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                readOnly: tags.length >= 3,
                textInputAction: TextInputAction.done,
                cursorColor: Colors.transparent,
                controller: tec,
                focusNode: fn,
                showCursor: true,
                decoration: InputDecoration(
                  isDense: true,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),

                  //hintText: _controller.hasTags ? '' : "Enter tag...",
                  hintText: '',
                  errorText: error,
                  // prefixIconConstraints:
                  //     BoxConstraints(maxWidth: _distanceToField * 0.74),
                  prefixIcon: tags.isNotEmpty
                      ? Wrap(
                          children: tags.map((String tag) {
                          return Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              color: Colors.white,
                            ),
                            margin: const EdgeInsets.fromLTRB(5, 6, 5, 0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      child: Text(
                                        tag,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      onTap: () {
                                        //print("$tag selected");
                                      },
                                    ),
                                    const SizedBox(width: 4.0),
                                    GestureDetector(
                                      child: Icon(
                                        Icons.close,
                                        size: 16,
                                        color: Colors.grey[800],
                                      ),
                                      onTap: () {
                                        onTagDelete(tag);
                                      },
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                              ],
                            ),
                          );
                        }).toList())
                      : null,
                ),
                onChanged: tags.length < 3 ? onChanged : null,
                onSubmitted: tags.length < 3
                    ? (tag) {
                        onSubmitted;
                        updateTags(widget.tagType, tag.replaceAll(" ", ""));
                      }
                    : null,
              ),
            );
          });
        },
      ),
    );
  }

  List<String> getInitialTags(TagType tagType) {
    switch (tagType) {
      case TagType.post:
        return controller.postTags;
      default:
        return ['UI/UX', 'Motion Design'];
    }
  }

  void updateTags(TagType tagType, String tag) {
    switch (tagType) {
      case TagType.post:
        controller.updatePostTags(tag);
        break;
      default:
        break;
    }
  }
}
