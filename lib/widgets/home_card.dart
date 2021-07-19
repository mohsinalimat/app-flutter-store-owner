
import 'package:flutter/material.dart';
import '../theme/colors.dart';

class HomeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const HomeCard({ Key key, this.icon, this.title, this.color }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return 
          Card(
            margin: EdgeInsets.zero,
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: 
              Container(
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Icon(icon, color: white, size: 30,),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      title,  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.3, color: white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
