import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:slide_to_act/slide_to_act.dart';
import '../../client2.dart';

List<int> _miroirParkingPart1 = [1, 2, 0, 0, 2];
List<int> _miroirParkingPart2 = [0, 2, 0, 1, 0];

class floor1 extends StatefulWidget {
  floor1({Key key}) : super(key: key);

  @override
  State<floor1> createState() => _floor1State();
}

class _floor1State extends State<floor1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          header(),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: dashboard__bg__color2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: _bloquer,
                    child: Text(
                      'Bloquer les places',
                      style: TextStyle(
                        fontFamily: 'FuturaPT',
                        color: secondary__color,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: dashboard__bg__color2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: _dispo,
                    child: Text(
                      'Rendre Disponible',
                      style: TextStyle(
                        fontFamily: 'FuturaPT',
                        color: secondary__color,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 35),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GridView.builder(
                    itemCount: _miroirParkingPart1.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.5,
                      // mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      if (_miroirParkingPart1[index] == 0) {
                        return InkWell(
                          onTap: () {
                            activeIndex = index;
                            print(activeIndex);
                            showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  // heightFactor: 0.85,
                                  child: Container(
                                    color: dashboard__bg__color,
                                    padding: EdgeInsets.all(
                                      20,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Options sur la place',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: secondary__color,
                                            fontFamily: 'FuturaPT',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Bloquer la place',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 20,
                                            ),
                                            child: SlideAction(
                                              borderRadius: 12,
                                              innerColor: secondary__color,
                                              outerColor: submit__color1,
                                              elevation: 0,
                                              text: 'Slidez pour blocker',
                                              sliderButtonIcon: Icon(
                                                Icons.lock_open_rounded,
                                              ),
                                              textStyle: TextStyle(
                                                fontSize: size__commonText,
                                                color: secondary__color,
                                                fontFamily: 'FuturaPT',
                                              ),
                                              sliderRotate: false,
                                              onSubmit: () {
                                                setState(() {
                                                  submit__color1 = Colors.green;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Cette place est actuellement disponible \nVous avez la possiblité de la bloquer si vous le souhaiter !',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.symmetric(
                                        //       vertical: 20,
                                        //     ),
                                        //     child: SlideAction(
                                        //       borderRadius: 12,
                                        //       innerColor: secondary__color,
                                        //       outerColor: submit__color,
                                        //       elevation: 0,
                                        //       text: 'Slider pour réserver',
                                        //       sliderButtonIcon: Icon(
                                        //         Icons.lock_open_rounded,
                                        //       ),
                                        //       textStyle: TextStyle(
                                        //         fontSize: size__commonText,
                                        //         color: secondary__color,
                                        //         fontFamily: 'FuturaPT',
                                        //       ),
                                        //       sliderRotate: false,
                                        //       onSubmit: () {
                                        //         setState(() {
                                        //           submit__color = Colors.green;
                                        //         });
                                        //       },
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          width: 360,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: dashboard__bg__color2,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: TextButton(
                                            onPressed: _changeStatus,
                                            // () {
                                            //   ScaffoldMessenger.of(context).showSnackBar(
                                            //     SnackBar(
                                            //       content: Text(
                                            //         'Mises à jour des statuts',
                                            //       ),
                                            //     ),
                                            //   );
                                            //   Navigator.pop(context);
                                            //   _changeStatus;
                                            // },
                                            child: Text(
                                              'Valider',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: secondary__color,
                                                fontWeight: FontWeight.w800,
                                                fontFamily: 'FuturaPT',
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: availableWidget(),
                        );
                      } else if (_miroirParkingPart1[index] == 1) {
                        return InkWell(
                          onTap: () {
                            activeIndex = index;
                            print(activeIndex);
                            showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  // heightFactor: 0.85,
                                  child: Container(
                                    color: dashboard__bg__color,
                                    padding: EdgeInsets.all(
                                      20,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Options sur la place',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: secondary__color,
                                            fontFamily: 'FuturaPT',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Rendre disponible la place',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 20,
                                            ),
                                            child: SlideAction(
                                              borderRadius: 12,
                                              innerColor: secondary__color,
                                              outerColor: submit__color1,
                                              elevation: 0,
                                              text: 'Slider pour blocker',
                                              sliderButtonIcon: Icon(
                                                Icons.lock_open_rounded,
                                              ),
                                              textStyle: TextStyle(
                                                fontSize: size__commonText,
                                                color: secondary__color,
                                                fontFamily: 'FuturaPT',
                                              ),
                                              sliderRotate: false,
                                              onSubmit: () {
                                                setState(() {
                                                  submit__color1 = Colors.green;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Cette place est actuellement bloquée \nVous avez la possiblité de la rendre disponible si vous le souhaiter !',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.symmetric(
                                        //       vertical: 20,
                                        //     ),
                                        //     child: SlideAction(
                                        //       borderRadius: 12,
                                        //       innerColor: secondary__color,
                                        //       outerColor: submit__color,
                                        //       elevation: 0,
                                        //       text: 'Slider pour réserver',
                                        //       sliderButtonIcon: Icon(
                                        //         Icons.lock_open_rounded,
                                        //       ),
                                        //       textStyle: TextStyle(
                                        //         fontSize: size__commonText,
                                        //         color: secondary__color,
                                        //         fontFamily: 'FuturaPT',
                                        //       ),
                                        //       sliderRotate: false,
                                        //       onSubmit: () {
                                        //         setState(() {
                                        //           submit__color = Colors.green;
                                        //         });
                                        //       },
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          width: 360,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: dashboard__bg__color2,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: TextButton(
                                            onPressed: _changeStatus,
                                            // () {
                                            //   ScaffoldMessenger.of(context).showSnackBar(
                                            //     SnackBar(
                                            //       content: Text(
                                            //         'Mises à jour des statuts',
                                            //       ),
                                            //     ),
                                            //   );
                                            //   Navigator.pop(context);
                                            //   _changeStatus;
                                            // },
                                            child: Text(
                                              'Valider',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: secondary__color,
                                                fontWeight: FontWeight.w800,
                                                fontFamily: 'FuturaPT',
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: unavailableWidget(),
                        );
                      } else {
                        return InkWell(
                          onTap: () {
                            activeIndex = index;
                            print(activeIndex);
                            showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  // heightFactor: 0.85,
                                  child: Container(
                                    color: dashboard__bg__color,
                                    padding: EdgeInsets.all(
                                      20,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Options sur la place',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: secondary__color,
                                            fontFamily: 'FuturaPT',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Cette place est actuellement utilisée \nVous avez la possiblité d\'avoir plus d\'informations sur le client \nAppuyer sur le bouton ci-après !',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Container(
                                          width: 360,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: dashboard__bg__color2,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      client2(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'Voir les détails',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: secondary__color,
                                                fontWeight: FontWeight.w800,
                                                fontFamily: 'FuturaPT',
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: useWidget(),
                        );
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  dashPattern: [6, 3, 0, 2, 3],
                  color: dashboard__bg__color2,
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(0),
                  child: ClipRRect(
                    child: Container(
                      height: 600,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  flex: 1,
                  child: GridView.builder(
                    itemCount: _miroirParkingPart2.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.5,
                      // mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      if (_miroirParkingPart2[index] == 0) {
                        return InkWell(
                          onTap: () {
                            activeIndex2 = index;
                            showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  // heightFactor: 0.85,
                                  child: Container(
                                    color: dashboard__bg__color,
                                    padding: EdgeInsets.all(
                                      20,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Options sur la place',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: secondary__color,
                                            fontFamily: 'FuturaPT',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Bloquer la place',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 20,
                                            ),
                                            child: SlideAction(
                                              borderRadius: 12,
                                              innerColor: secondary__color,
                                              outerColor: submit__color1,
                                              elevation: 0,
                                              text: 'Slidez pour blocker',
                                              sliderButtonIcon: Icon(
                                                Icons.lock_open_rounded,
                                              ),
                                              textStyle: TextStyle(
                                                fontSize: size__commonText,
                                                color: secondary__color,
                                                fontFamily: 'FuturaPT',
                                              ),
                                              sliderRotate: false,
                                              onSubmit: () {
                                                setState(() {
                                                  submit__color1 = Colors.green;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Cette place est actuellement disponible \nVous avez la possiblité de la bloquer si vous le souhaiter !',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.symmetric(
                                        //       vertical: 20,
                                        //     ),
                                        //     child: SlideAction(
                                        //       borderRadius: 12,
                                        //       innerColor: secondary__color,
                                        //       outerColor: submit__color,
                                        //       elevation: 0,
                                        //       text: 'Slider pour réserver',
                                        //       sliderButtonIcon: Icon(
                                        //         Icons.lock_open_rounded,
                                        //       ),
                                        //       textStyle: TextStyle(
                                        //         fontSize: size__commonText,
                                        //         color: secondary__color,
                                        //         fontFamily: 'FuturaPT',
                                        //       ),
                                        //       sliderRotate: false,
                                        //       onSubmit: () {
                                        //         setState(() {
                                        //           submit__color = Colors.green;
                                        //         });
                                        //       },
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          width: 360,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: dashboard__bg__color2,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: TextButton(
                                            onPressed: _changeStatus2,
                                            // () {
                                            //   ScaffoldMessenger.of(context).showSnackBar(
                                            //     SnackBar(
                                            //       content: Text(
                                            //         'Mises à jour des statuts',
                                            //       ),
                                            //     ),
                                            //   );
                                            //   Navigator.pop(context);
                                            //   _changeStatus;
                                            // },
                                            child: Text(
                                              'Valider',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: secondary__color,
                                                fontWeight: FontWeight.w800,
                                                fontFamily: 'FuturaPT',
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: availableWidget(),
                        );
                      } else if (_miroirParkingPart2[index] == 1) {
                        return InkWell(
                          onTap: () {
                            activeIndex2 = index;
                            showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  // heightFactor: 0.85,
                                  child: Container(
                                    color: dashboard__bg__color,
                                    padding: EdgeInsets.all(
                                      20,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Options sur la place',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: secondary__color,
                                            fontFamily: 'FuturaPT',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Rendre disponible la place',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 20,
                                            ),
                                            child: SlideAction(
                                              borderRadius: 12,
                                              innerColor: secondary__color,
                                              outerColor: submit__color1,
                                              elevation: 0,
                                              text: 'Slider pour blocker',
                                              sliderButtonIcon: Icon(
                                                Icons.lock_open_rounded,
                                              ),
                                              textStyle: TextStyle(
                                                fontSize: size__commonText,
                                                color: secondary__color,
                                                fontFamily: 'FuturaPT',
                                              ),
                                              sliderRotate: false,
                                              onSubmit: () {
                                                setState(() {
                                                  submit__color1 = Colors.green;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Cette place est actuellement bloquée \nVous avez la possiblité de la rendre disponible si vous le souhaiter !',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   child: Padding(
                                        //     padding: const EdgeInsets.symmetric(
                                        //       vertical: 20,
                                        //     ),
                                        //     child: SlideAction(
                                        //       borderRadius: 12,
                                        //       innerColor: secondary__color,
                                        //       outerColor: submit__color,
                                        //       elevation: 0,
                                        //       text: 'Slider pour réserver',
                                        //       sliderButtonIcon: Icon(
                                        //         Icons.lock_open_rounded,
                                        //       ),
                                        //       textStyle: TextStyle(
                                        //         fontSize: size__commonText,
                                        //         color: secondary__color,
                                        //         fontFamily: 'FuturaPT',
                                        //       ),
                                        //       sliderRotate: false,
                                        //       onSubmit: () {
                                        //         setState(() {
                                        //           submit__color = Colors.green;
                                        //         });
                                        //       },
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Container(
                                          width: 360,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: dashboard__bg__color2,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: TextButton(
                                            onPressed: _changeStatus2,
                                            // () {
                                            //   ScaffoldMessenger.of(context).showSnackBar(
                                            //     SnackBar(
                                            //       content: Text(
                                            //         'Mises à jour des statuts',
                                            //       ),
                                            //     ),
                                            //   );
                                            //   Navigator.pop(context);
                                            //   _changeStatus;
                                            // },
                                            child: Text(
                                              'Valider',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: secondary__color,
                                                fontWeight: FontWeight.w800,
                                                fontFamily: 'FuturaPT',
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: unavailableWidget(),
                        );
                      } else {
                        return InkWell(
                          onTap: () {
                            activeIndex2 = index;
                            showModalBottomSheet(
                              context: context,
                              // isScrollControlled: true,
                              builder: (BuildContext context) {
                                return FractionallySizedBox(
                                  // heightFactor: 0.85,
                                  child: Container(
                                    color: dashboard__bg__color,
                                    padding: EdgeInsets.all(
                                      20,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Options sur la place',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: secondary__color,
                                            fontFamily: 'FuturaPT',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        SizedBox(
                                          width: 390,
                                          child: Text(
                                            'Cette place est actuellement utilisée \nVous avez la possiblité d\'avoir plus d\'informations sur le client \nAppuyer sur le bouton ci-après !',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: secondary__color,
                                              fontFamily: 'FuturaPT',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Container(
                                          width: 360,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: dashboard__bg__color2,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => client2(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'Voir les détails',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: secondary__color,
                                                fontWeight: FontWeight.w800,
                                                fontFamily: 'FuturaPT',
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: useWidget(),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          // Range(),
        ],
      ),
    );
  }

  void _changeStatus() {
    setState(() {
      if (_miroirParkingPart1[activeIndex] == 0) {
        _miroirParkingPart1[activeIndex] = 1;
      } else if (_miroirParkingPart1[activeIndex] == 1) {
        _miroirParkingPart1[activeIndex] = 0;
      }
    });
  }

  void _changeStatus2() {
    setState(() {
      if (_miroirParkingPart2[activeIndex2] == 0) {
        _miroirParkingPart2[activeIndex2] = 1;
      } else if (_miroirParkingPart2[activeIndex2] == 1) {
        _miroirParkingPart2[activeIndex2] = 0;
      }
    });
  }

  void _bloquer() {
    setState(() {
      _miroirParkingPart1 = [1, 1, 1, 1, 1];
      _miroirParkingPart2 = [1, 1, 1, 1, 1];
    });
  }

  void _dispo() {
    setState(() {
      _miroirParkingPart1 = [0, 0, 0, 0, 0];
      _miroirParkingPart2 = [0, 0, 0, 0, 0];
    });
  }
}

int activeIndex;
int activeIndex2;

var available = 'Disponible';
var availableColor = Colors.white;

class header extends StatefulWidget {
  const header({Key key}) : super(key: key);

  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: dashboard__bg__color2,
          ),
          Icon(
            Icons.arrow_back_ios,
            color: dashboard__bg__color2,
          ),
          Column(
            children: [
              Text(
                '1ere Rangée',
                style: TextStyle(
                    fontSize: size__bigText,
                    color: secondary__color,
                    fontFamily: 'FuturaPT',
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '10 Place libres',
                style: TextStyle(
                  fontSize: size__littleText,
                  color: color__text3,
                  fontFamily: 'FuturaPT',
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: dashboard__bg__color2,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: dashboard__bg__color2,
          ),
        ],
      ),
    );
  }
}

// class Range extends StatefulWidget {
//   Range({Key key}) : super(key: key);

//   @override
//   State<Range> createState() => _RangeState();
// }

// class _RangeState extends State<Range> {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

var submit__color = dashboard__bg__color2;
var submit__color1 = dashboard__bg__color2;

var text = 'Rendre Indisponible la place';

class unavailableWidget extends StatelessWidget {
  const unavailableWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromARGB(23, 211, 47, 47),
            dashboard__bg__color,
          ],
        ),
        border: Border(
          top: BorderSide(
            color: color__text2,
            width: 2.0,
          ),
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              'Bloquée',
              style: TextStyle(
                fontSize: size__commonText,
                color: Colors.red,
                fontWeight: FontWeight.w700,
                fontFamily: 'FuturaPT',
              ),
            ),
          ),
          Positioned(
            bottom: 5.0,
            right: 10,
            child: Text(
              'A1',
              style: TextStyle(
                fontSize: size__littleText,
                fontWeight: FontWeight.w700,
                fontFamily: 'FuturaPT',
                color: dashboard__bg__color2,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class availableWidget extends StatelessWidget {
  const availableWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 160,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: color__text2,
            width: 2.0,
          ),
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Disponible',
                style: TextStyle(
                  fontSize: size__commonText,
                  color: secondary__color,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'FuturaPT',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5.0,
            right: 10,
            child: Text(
              'B2',
              style: TextStyle(
                fontSize: size__littleText,
                fontWeight: FontWeight.w700,
                fontFamily: 'FuturaPT',
                color: dashboard__bg__color2,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class useWidget extends StatelessWidget {
  const useWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 160,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: color__text2,
            width: 2.0,
          ),
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: RotatedBox(
              quarterTurns: 1,
              child: Image.asset(
                'assets/images/little__car.png',
                height: 170,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 10,
            child: Text(
              'B3',
              style: TextStyle(
                fontSize: size__littleText,
                fontWeight: FontWeight.w700,
                color: dashboard__bg__color2,
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget currentWidget = unavailableWidget();
