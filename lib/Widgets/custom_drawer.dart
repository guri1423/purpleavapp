/// this is our custom drop down class

import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  List<String> title;
  bool expand;
  String ?hint;

  CustomDropDown({Key? key, required this.title,required this.expand,this.hint}) : super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  List<bool> value = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Theme(
       data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ListView.builder(
          itemCount: widget.title.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: widget.expand?ExpansionTile(
                title: Row(
                  children: [
                    Checkbox(
                        fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff9C037F);
                          }
                          return Color(0xff9C037F);
                        }),
                        value: value[index],
                        onChanged: (val) {
                          setState(() {
                            value[index] = val!;
                          });
                        }),
                    SizedBox(
                      width: 15,
                    ),
                    Text(widget.title[index]),
                  ],
                ),
                children: [
                  widget.hint=="package"?Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none,
                              hintText:"ENTER PACKAGE DETAILS",
                              contentPadding: EdgeInsets.symmetric(horizontal: 5)
                          ),
                        )),
                  ):Container(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none,
                            hintText:"Enter Price",
                            contentPadding: EdgeInsets.symmetric(horizontal: 5)
                          ),
                        )),
                  ),

                ],
              ): Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Checkbox(
                        fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff9C037F);
                          }
                          return Color(0xff9C037F);
                        }),
                        value: value[index],
                        onChanged: (val) {
                          setState(() {
                            value[index] = val!;
                          });
                        }),
                    SizedBox(
                      width: 15,
                    ),
                    Text(widget.title[index]),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class TextFieldDropDown extends StatefulWidget {
  const TextFieldDropDown({Key? key}) : super(key: key);

  @override
  State<TextFieldDropDown> createState() => _TextFieldDropDownState();
}

class _TextFieldDropDownState extends State<TextFieldDropDown> {
  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}
