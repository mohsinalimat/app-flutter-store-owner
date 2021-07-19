
import 'package:aniron/theme/colors.dart';
import 'package:aniron/widgets/item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../theme/colors.dart';
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
                width: 100,
                height: 100,
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
                    color: Colors.grey
                  ),),
                  SizedBox(height: 8,),
                  Text("ID: 100001",style: TextStyle(
                    fontSize: 15,
                    color: primary,
                    fontWeight: FontWeight.w500
                  ),),
                ],
              ),
              SizedBox(width: 20,),
              Container(
                child: Icon(Icons.arrow_forward_ios, color: Colors.grey,)
              ),
              SizedBox(width: 5,),
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
                icon: Icons.store, color: primary ,
                title: "Manage Store",),
              ItemTileWidget(
                icon: Icons.settings, color: primary ,
                title: "Setting",cnt: "",),
              ItemTileWidget(
                icon: Icons.notifications, color: primary ,
                title: "Notifications",cnt: "",),

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
                icon: Icons.call, color: primary ,
                title: "Contact",cnt: "",),
              ItemTileWidget(
                icon: Icons.lock, color: primary ,
                title: "Privacy Policy",cnt: "",),
              ItemTileWidget(
                icon: Icons.list, color: primary ,
                title: "Term and Condition",cnt: "",),
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
                icon: Icons.exit_to_app, color: ThemeColor.red,
                title: "Log out",cnt: "",
                press: (){
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/login', (Route<dynamic> route) => false,
                          arguments: 0);
                    },
              ),
       
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
