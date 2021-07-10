

import 'package:aniron/theme/colors.dart';
import 'package:aniron/util/helper.dart';
import 'package:aniron/widgets/appbar_top.dart';
import 'package:aniron/widgets/bottom_sheet_app_bar.dart';
import 'package:aniron/widgets/product_grand_list.dart';
import 'package:aniron/widgets/round_check_box_text.dart';
import 'package:aniron/widgets/search_field.dart';
import 'package:aniron/widgets/textfield_left_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SaleOptionPage extends StatefulWidget {
  @override
  _SaleOptionPageState createState() => _SaleOptionPageState();
}

class _SaleOptionPageState extends State<SaleOptionPage> {

  bool isRetailSaleSelected = true;
  bool isWholeSaleSelected = false;
  bool isCreatedTemplate = false;

  TextEditingController fromQtyTextController = new TextEditingController();
  TextEditingController toQtyTextController = new TextEditingController();
  TextEditingController priceQtyTextController = new TextEditingController();
  TextEditingController searchRankTemplateTextController = new TextEditingController();
  


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppbarTopWidget(
        appBarTitle: 'Sale Option',
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 15),
        width: MediaQuery.of(context).size.width,
        child: ListView(
            
            children: <Widget>[
              SizedBox(height: 10,),
              
              RoundCheckBoxTextWidget(
                isSelected: true,
                title: "Retail Sale",
                onTap: (bool value) {
                  print(value);
                },
              ),

              RoundCheckBoxTextWidget(
                isSelected: true,
                title: "Whole Sale",
                onTap: (bool value) {
                  print(value);
                },
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Rank", style:TextStyle(fontSize: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          _modalBottomSheetRankTemplate();
                        },
                        child: Row(
                          children: <Widget>[
                            Text("Template ",style: TextStyle(color:ThemeColor.main),),
                            Icon(
                              LineIcons.calendar,
                              color: ThemeColor.main,
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(" | "),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: () {
                          _modalBottomSheetAddRange();
                        },
                        child: Row(
                          children: <Widget>[
                            Text("Add ",style: TextStyle(color:ThemeColor.main),),
                            Icon(
                              Icons.add_circle_outline,
                              color: ThemeColor.main,
                            )
                        ],
                      )),
                    ],
                  ),
                ],
              ),
               
              ProductGrandListWidget(
                 myData: ['Cosmetic', 'Food','Electronic','Fashion'],
              ),
              SizedBox(
                height: 15,
              ),

              Stack(
                children: <Widget>[

                  (isCreatedTemplate) ?
                  TextField(
                    autofocus: true,
                    decoration : new InputDecoration(
                      
                      hintText : "Enter Template Name",
                      enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: ThemeColor.grayline),   
                      ),  
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ThemeColor.main),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: ThemeColor.grayline),
                      ),
                    )
                  ):Container(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[

                      (isCreatedTemplate) ?
                      Container()
                      :
                      Row(
                        children: <Widget>[
                        
                          Text("Create Template "),
                          Icon(
                            LineIcons.calendar,
                          ),
                        
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CupertinoSwitch(
                        activeColor: ThemeColor.main,
                        value: isCreatedTemplate,
                        onChanged: (bool value) { setState(() { isCreatedTemplate = value; }); },
                      ),
                    ],
                  )
                ],
              )
              
              
            ],
          ),
      ),
    );
  }


  void _modalBottomSheetRankTemplate(){
    bottomSheetModal(context,520,rankTemplate());
  }

  void _modalBottomSheetAddRange(){
    bottomSheetModal(context,300,addRange());
  }

  Widget addRange(){
    return Column(
      children: <Widget>[
        BottomSheetAppBarWidget(
          title: "Add Range",
          onTap: (){
            print(fromQtyTextController.text);
          },
        ),

        SizedBox(
          height: 20,
        ),

        Expanded(
          child: ListView(
            children: <Widget>[

              

              TextFieldLeftTitleWidget(
                title: "From Qty",
                isImportant: true,
                textController: toQtyTextController,
              ),

             

              TextFieldLeftTitleWidget(
                title: "To Qty",
                isImportant: true,
                textController: toQtyTextController,
              ),

              TextFieldLeftTitleWidget(
                title: "Price",
                isImportant: true,
                textController: priceQtyTextController,
              ),

            ],
          ),
        )
      ],
    );
  }

  

  Widget rankTemplate(){

   
    var data = [{
      "id" : 1,
      "items" : ""
    },{
      "id" : 2,
      "items" : ""
    }];
    int groupValue = 1;
    //var chosenObject = data[0];
    return Column(
      children: <Widget>[
        
        BottomSheetAppBarWidget(
          title: "Rank Template",
          onTap: (){
          },
        ),
        SizedBox(
          height: 10,
        ),

        Padding(
          padding: EdgeInsets.only(left: 15,right: 15),
          child: SearchFieldWidget(
            textController: searchRankTemplateTextController,
          ),
          
        ),

        SizedBox(
          height: 20,
        ),

        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(left: 15,right: 15),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index){
              
           
              return Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment:  MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(LineIcons.calendar, color: ThemeColor.main,),
                          SizedBox(width: 10,),
                          Text("Template Name One", style:TextStyle(fontSize: 16)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Icon(
                              Icons.remove_circle_outline,
                              color: ThemeColor.red,
                            )
                          ),
                          SizedBox(width: 15,),

                          Radio(
                            value: data[index]["id"],
                            groupValue: groupValue,
                            activeColor: ThemeColor.main,
                            onChanged: (val) {
                              print("Radio $val");
                             
                            },
                          ),

                        ],
                      ),
                    ],
                  ),

                  ProductGrandListWidget(
                    myData: ['Cosmetic', 'Food','Electronic','Fashion'],
                  ),

                  SizedBox(
                    height: 20,
                  )
                ],
              );
                
            }
          )
        ),

      ],
    );
  }

}
