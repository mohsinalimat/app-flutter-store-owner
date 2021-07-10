import 'package:aniron/theme/colors.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OrderFloatingmenuWidget extends StatelessWidget{

  final int currentStand;
  final Key fabKey;

  OrderFloatingmenuWidget({Key key, 
    this.currentStand = 1,
    this.fabKey
    }) : super(key : key);

  @override
  Widget build(BuildContext context){

    return FabCircularMenu(
      key: fabKey,
        ringColor: ThemeColor.main,
        fabColor: ThemeColor.main,
        fabCloseIcon: Icon(
          Icons.clear,
          color:white,
          size: 30,
        ),
        fabOpenIcon: Icon(
          Icons.palette,
          color: white,
          size: 40,
        ),
        ringDiameter: 620,
        ringWidth: 100,
        children: <Widget>[

         
          Container(),
        
          buttonInFab("New Order", LineIcons.cart_plus , (){
           // Navigator.pushNamed(context, '/order-section');
          },isSelected: (currentStand == 5) ? true : false),

          buttonInFab("Accepted", LineIcons.paperclip , (){
            //Navigator.pushNamed(context, '/order-section');
          },isSelected: (currentStand == 4) ? true : false),

          buttonInFab("Packaged", LineIcons.cube , (){
            //Navigator.pushNamed(context, '/order-section');
          },isSelected: (currentStand == 3) ? true : false),

          buttonInFab("Delivery", LineIcons.truck, (){
            //Navigator.pushNamed(context, '/order-section');
          },isSelected: (currentStand == 2) ? true : false),

          buttonInFab("All", LineIcons.dashboard,(){

          },isSelected: (currentStand == 1) ? true : false),

          

          
        ]
      );
  }

  Widget buttonInFab(String title, IconData icon ,VoidCallback onPressed, {bool isSelected = false}){
    print(isSelected);
    if(isSelected) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ThemeColor.lightblue.withOpacity(0.4)
            ),
            padding: EdgeInsets.all(3),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: Icon(
                icon,
                size: 20.0,
                color: ThemeColor.orange,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          ),
          SizedBox(height: 2,),
          Text(title, style: TextStyle(color:white,fontSize: 12),),
        ],
      );

    }
    else{
     
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
               onPressed();
            },
            elevation: 2.0,
            fillColor: Colors.white,
            child: Icon(
              icon,
              size: 20.0,
              color: ThemeColor.main
            ),
            padding: EdgeInsets.all(6.0),
            shape: CircleBorder(),
          ),
         
          SizedBox(height: 2,),
          Text(title, style: TextStyle(color:white,fontSize: 12),),
        ],
      );
    }
    
    
  }
}