import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:aniron/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class BarChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final Color leftBarColor = const Color(0xff53fdd7);
  final Color rightBarColor = const Color(0xffff5182);
  final double width = 10;

  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;
  // int _b, _d = 10;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 50, 0);
    final barGroup2 = makeGroupData(1, 12, 0);
    final barGroup3 = makeGroupData(2, 100, 0);
    final barGroup4 = makeGroupData(3, 70, 0);
    final barGroup5 = makeGroupData(4, 60, 0);
    final barGroup6 = makeGroupData(5, 35, 0);
    final barGroup7 = makeGroupData(6, 43, 0);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = List.of(rawBarGroups);
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5,
      child: Card(
        elevation: 0,
        shadowColor: ThemeColor.dark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: ThemeColor.maintransparent,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // makeTransactionsIcon(),
                  Icon(
                    LineIcons.calendar,
                    color: ThemeColor.main,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Sale Last 7 days',
                    style: TextStyle(color: ThemeColor.main, fontSize: 14),
                  ),
                  // const SizedBox(
                  //   width: 4,
                  // ),
                  // const Text(
                  //   'state',
                  //   style: TextStyle(color: Color(0xff77839a), fontSize: 16),
                  // ),
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              // Stack(
              //   children: <Widget>[
              //     Container(
              //       margin: EdgeInsets.only(left: 20),
              //       width: 2,
              //       height: 100,
              //       color: ThemeColor.none,
              //       child: Positioned(
              //         left: 30,
              //         child: Container(
              //           width: 2,
              //           height: 100,
              //           color: Colors.black,
              //         ),
              //       ),
              //     )
              //   ],
              // ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: BarChart(
                    BarChartData(
                      axisTitleData: FlAxisTitleData(),
                      maxY: 100,
                      barTouchData: BarTouchData(
                          allowTouchBarBackDraw: true,
                          enabled: false,
                          touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor: ThemeColor.none,
                            tooltipBottomMargin: 8,
                            getTooltipItem: (BarChartGroupData _a, int _b,
                                BarChartRodData _c, int _d) {
                              return BarTooltipItem(
                                _c.y.round().toString(),
                                TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            },
                          ),
                          touchCallback: (response) {
                            print('testing');
                            // if (response.spot == null) {
                            //   setState(() {
                            //     touchedGroupIndex = -1;
                            //     showingBarGroups = List.of(rawBarGroups);
                            //   });
                            //   return;
                            // }

                            // touchedGroupIndex =
                            //     response.spot.touchedBarGroupIndex;

                            // setState(() {
                            //   // touchedGroupIndex = -1;
                            //   //   showingBarGroups = List.of(rawBarGroups);

                            //   if (response.touchInput is FlLongPressEnd ||
                            //       response.touchInput is FlPanEnd) {
                            //     touchedGroupIndex = -1;
                            //     showingBarGroups = List.of(rawBarGroups);
                            //   } else {
                            //     showingBarGroups = List.of(rawBarGroups);
                            //     if (touchedGroupIndex != -1) {
                            //       double sum = 0;
                            //       for (BarChartRodData rod
                            //           in showingBarGroups[touchedGroupIndex]
                            //               .barRods) {
                            //         sum += rod.y;
                            //       }
                            //       final avg = sum /
                            //           showingBarGroups[touchedGroupIndex]
                            //               .barRods
                            //               .length;

                            //       showingBarGroups[touchedGroupIndex] =
                            //           showingBarGroups[touchedGroupIndex]
                            //               .copyWith(
                            //         barRods: showingBarGroups[touchedGroupIndex]
                            //             .barRods
                            //             .map((rod) {
                            //           return rod.copyWith(y: avg);
                            //         }).toList(),
                            //       );
                            //     }
                            //   }
                            // });
                          }),
                      titlesData: FlTitlesData(
                        show: true,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          textStyle: TextStyle(
                              color: const Color(0xff7589a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          margin: 20,
                          getTitles: (double value) {
                            switch (value.toInt()) {
                              case 0:
                                return '1st';
                              case 1:
                                return '2nd';
                              case 2:
                                return '3rd';
                              case 3:
                                return '4th';
                              case 4:
                                return '5th';
                              case 5:
                                return '6th';
                              case 6:
                                return '7th';
                              default:
                                return '';
                            }
                          },
                        ),
                        leftTitles: SideTitles(
                          showTitles: false,
                          textStyle: TextStyle(
                              color: const Color(0xff7589a2),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                          margin: 32,
                          reservedSize: 14,
                          getTitles: (value) {
                            // if (value == 0) {
                            //   return '0';
                            // } else if (value == 10) {
                            //   return '10';
                            // } else if (value == 19) {
                            //   return '20';
                            // } else {
                            //   return '';
                            // }
                            double val = value % 50;
                            if (val == 0) {
                              return value.toString();
                            } else {
                              return '';
                            }
                          },
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups: showingBarGroups,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
        showingTooltipIndicators: [0],
        barsSpace: 4,
        x: x,
        barRods: [
          BarChartRodData(
            y: y1,
            color: (x == 0 || x % 2 == 0) ? ThemeColor.orange : ThemeColor.main,
            width: width,
          ),

          // BarChartRodData(
          //   y: y2,
          //   color: rightBarColor,
          //   width: width,
          // ),
        ]);
  }

  Widget makeTransactionsIcon() {
    const double width = 4.5;
    const double space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}
