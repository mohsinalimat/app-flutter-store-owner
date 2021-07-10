
import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../util/data.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Account',
              style: TextStyle(color: ThemeColor.dark),
            ),
      ),
      body: body(),
      
    );
  }
  Widget body(){
  
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: white,
            border: Border(
              top: BorderSide(
                color: ThemeColor.grayline,
                width: 1
              ),
              bottom: BorderSide(
                color: ThemeColor.grayline,
                width: 1
              )
            )
          ),
          padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 4,
                     color: ThemeColor.grayline),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(userProfile),
                  fit: BoxFit.cover)
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 150,
                    child: Text("Sangvaleap V.",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                  
                  SizedBox(height: 8,),
                  Text("+855 96 4444 204",style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54
                  ),),
                  SizedBox(height: 8,),
                  Text("ID: 100001",style: TextStyle(
                    fontSize: 15,
                    color: ThemeColor.main,
                    fontWeight: FontWeight.w500
                  ),),
                  SizedBox(height: 8,),
                  FlatButton(
                    color: ThemeColor.main,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    onPressed: (){

                  }, child: Text("Edit Profile",style: TextStyle(
                    color: white,
                    fontSize: 13
                  ),))
                ],
              )
            ],
          ),
        ),
        
        Container(
          height: 20,
          color: ThemeColor.backgroundGray,
        ),

        Container(
          decoration: BoxDecoration(
            color: white,
            border: Border(
              top: BorderSide(
                color: ThemeColor.grayline,
                width: 1
              ),
              bottom: BorderSide(
                color: ThemeColor.grayline,
                width: 1
              )
            )
          ),
          child: Column(
            children: <Widget>[
              ItemTileWidget(
                icon: Icons.home, color: ThemeColor.secondary ,
                title: "Manage Store",cnt: "7",),
              ItemTileWidget(
                icon: Icons.search, color: ThemeColor.lightgreen ,
                title: "Feedback",cnt: "6",),
              ItemTileWidget(
                icon: Icons.question_answer, color: ThemeColor.orange ,
                title: "How to use app",cnt: "",),
              ItemTileWidget(
                icon: Icons.settings, color: ThemeColor.main ,
                title: "Setting",cnt: "",),

            ],
          ),
        ),

        Container(
          height: 20,
          color: ThemeColor.backgroundGray,
        ),

        Container(
          decoration: BoxDecoration(
            color: white,
            border: Border(
              top: BorderSide(
                color: ThemeColor.grayline,
                width: 1
              ),
              bottom: BorderSide(
                color: ThemeColor.grayline,
                width: 1
              )
            )
          ),
          child: Column(
            children: <Widget>[
              ItemTileWidget(
                icon: Icons.notifications, color: ThemeColor.red ,
                title: "Notifications and Sounds",cnt: "",),
              ItemTileWidget(
                icon: Icons.lock, color: Colors.black54 ,
                title: "Privacy and Security",cnt: "",),
              ItemTileWidget(
                icon: Icons.comment, color: ThemeColor.lightblue ,
                title: "Term and Condition",cnt: "",),
              ItemTileWidget(
                icon: Icons.help, color: ThemeColor.lightgreen ,
                title: "Help Center",cnt: "",),
            ],
          ),
        ),

        Container(
          height: 20,
          color: ThemeColor.backgroundGray,
        ),

        Container(
          decoration: BoxDecoration(
            color: white,
            border: Border(
              top: BorderSide(
                color: ThemeColor.grayline,
                width: 1
              ),
              bottom: BorderSide(
                color: ThemeColor.grayline,
                width: 1
              )
            )
          ),
          child: Column(
            children: <Widget>[
              ItemTileWidget(
                icon: Icons.exit_to_app, color: ThemeColor.red ,
                title: "Log out",cnt: "",),
       
            ],
          ),
          
        ),
        Container(
          height: 20,
          color: ThemeColor.backgroundGray,
        ),
        
      ],
    ); 
  }
}
