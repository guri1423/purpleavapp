
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
                Text(widget.title[index]),
                Spacer(),
                Checkbox(value: value[index], onChanged: (val){
                  setState(() {
                    value[index]=val!;
                  });
                })
              ],
            ),
          );
        }
    );
  }
}


