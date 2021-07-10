import 'package:aniron/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomSheetAppBarWidget extends StatelessWidget{

  final String title;
  final VoidCallback onTap;

  BottomSheetAppBarWidget({Key key, 
    this.title, 
    this.onTap}) : super(key : key);

  @override
  Widget build(BuildContext context){

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color : ThemeColor.grayline,width : 1)
        )
      ),
      child: ListTile(
        leading: Icon(
          Icons.clear
        ),
        title: Center(
          child: Text(title, style: TextStyle(fontSize: 18)),
        ),
        trailing: InkWell(
          onTap: onTap,
          child: Text("Done",style: TextStyle(
            color: ThemeColor.main,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}