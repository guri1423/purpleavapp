
/// this is our custom drop down class

import 'package:flutter/material.dart';


class CustomDropDown extends StatefulWidget {

  List<String>title;
 CustomDropDown({Key? key,required this.title}) : super(key: key);

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
 List<bool>value=[
   false,
   false,
   false,
   false,
   false,
   false,
 ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.title.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Checkbox(
                     fillColor: MaterialStateProperty.resolveWith<Color>((
                states) {
          if (states.contains(MaterialState.disabled)) {
          return Color(0xff9C037F);
          }
          return Color(0xff9C037F);
          }),
                    value: value[index], onChanged: (val){
                  setState(() {
                    value[index]=val!;
                  });
                }),
                SizedBox(width: 15,),
                Text(widget.title[index]),

              ],
            ),
          );
        }
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
    return TextField(

    );
  }
}





