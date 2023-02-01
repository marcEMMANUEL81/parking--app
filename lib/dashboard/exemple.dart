import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'dashboard.dart';

// class DoughnutChartExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SfCircularChart(
//         series: <CircularSeries>[
//           DoughnutSeries<SalesData, String>(
//             dataSource: <SalesData>[
//               SalesData('Product A', 35),
//               SalesData('Product B', 25),
//               SalesData('Product C', 15),
//             ],
//             xValueMapper: (SalesData data, _) => data.product,
//             yValueMapper: (SalesData data, _) => data.sales,
//             // enableSmartLabels: true,
//             animationDuration: 2500,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SalesData {
//   SalesData(this.product, this.sales);
//   final String product;
//   final double sales;
// }

class DoughnutChartExample extends StatefulWidget {
  @override
  _DoughnutChartExample createState() => _DoughnutChartExample();
}

class _DoughnutChartExample extends State<DoughnutChartExample> {
  List<GDPData> _chartData;
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dashboard__bg__color,
        body: SfCircularChart(
          palette: [
            Color.fromARGB(255, 150, 155, 216),
            dashboard__bg__color2,
            Colors.pink
          ],
          legend: Legend(
            isVisible: true,
            overflowMode: LegendItemOverflowMode.wrap,
            textStyle: TextStyle(color: secondary__color),
          ),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            DoughnutSeries<GDPData, String>(
              dataSource: _chartData,
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              // dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true,
              animationDuration: 2000,
              animationDelay: 500,
              // maximumValue: 50,
            )
          ],
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    if (selectedValue == 'Parking 1'){
      final List<GDPData> chartData = [
        GDPData('Places libres', parkings[0]['nbPlaces']),
        GDPData('Places occupées', 30),
        GDPData('Places bloquées', 5),
      ];
      return chartData;
    } else if (selectedValue == 'Parking 2'){
      final List<GDPData> chartData = [
        GDPData('Places libres', parkings[1]['nbPlaces']),
        GDPData('Places occupées', 30),
        GDPData('Places bloquées', 5),
      ];
      return chartData;
    } else {
      final List<GDPData> chartData = [
        GDPData('Places libres', parkings[2]['nbPlaces']),
        GDPData('Places occupées', 30),
        GDPData('Places bloquées', 5),
      ];
      return chartData;
    }
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
