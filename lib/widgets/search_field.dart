import 'package:aniron/theme/colors.dart';
import 'package:flutter/material.dart';

typedef StringCallback = Function(String value);

class SearchFieldWidget extends StatefulWidget{

  final String hint;
  final TextEditingController textController;
  final StringCallback onChanged;


  SearchFieldWidget({Key key, 
    this.hint = 'Search by name',
    this.textController,
    this.onChanged
  }) : super(key : key);

   @override
  _SearchFieldWidgetState createState() => _SearchFieldWidgetState(
    this.hint, this.textController, this.onChanged);

}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {

  
  String hint;
  TextEditingController textController;
  StringCallback onChanged;

  _SearchFieldWidgetState(
    this.hint, this.textController, this.onChanged);

  bool isCancelAppear = false;
  @override
  Widget build(BuildContext context){

    

    return TextField(
      onChanged: (value){
        //onChanged(value);
        if(value.length > 0){
          setState(() {
            isCancelAppear = true;
          });
        }else{
          setState(() {
            isCancelAppear = false;
          });
        }
      },
      controller: textController,
      decoration: InputDecoration(
        isDense: true,                      // Added this
        contentPadding: EdgeInsets.all(10), 
        border: new OutlineInputBorder(
          borderSide: BorderSide(
              width: 0, 
              style: BorderStyle.none,
          ),
          borderRadius: const BorderRadius.all(
            const Radius.circular(8.0),
          ),
        ),
        hintText: hint,
        prefixIcon: Icon(
          
          Icons.search,
          size: 28.0,
          color: Colors.grey,
        ),
        suffixIcon: InkWell(
          onTap: (){
            textController.clear();
            if(textController.text.length > 0){
              setState(() {
                isCancelAppear = true;
              });
            }else{
              setState(() {
                isCancelAppear = false;
              });
            }
          },
          child: Icon(
            Icons.cancel,
            color: Colors.grey,
            size:  (isCancelAppear) ? 20 : 0,
          ),
        ),
        filled: true,
        fillColor: ThemeColor.grayline
      ),
    );
  }


}