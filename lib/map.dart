// import 'package:flutter/services.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:flutter_gmaps/part1/Info__parking.dart';
import 'package:flutter_gmaps/part1/Parkings.dart';
import 'package:flutter_gmaps/part1/pics/Pic1.dart';
import 'package:flutter_gmaps/part1/pics/Pic2.dart';
import 'package:flutter_gmaps/part1/pics/Pic3.dart';
import 'package:flutter_gmaps/tickets/ticket.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_gmaps/directions_model.dart';
import 'package:flutter_gmaps/directions_repository.dart';
import 'package:location/location.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'espaceClient.dart';
import 'main.dart';

List options = [
  'Proche de vous',
  'Proche de votre domicile',
  'Proche de votre Ville'
];

List parking = [
  {
    'image': 'assets/images/img7.jpg',
    'nom': 'Parking CIWA',
    'distance': 'A 200m de vous',
    'tarif': '500 F/h',
  },
  {
    'image': 'assets/images/img8.jpg',
    'nom': 'Parking KAWA',
    'distance': 'A 600 km de vous',
    'tarif': '700 F/h',
  },
  {
    'image': 'assets/images/img6.jpg',
    'nom': 'Parking bnetd',
    'distance': 'A 1 km de vous',
    'tarif': '400 F/h',
  },
];

class MapScreen2 extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

final location = Location();
dynamic currentLocation;
tryGetLocation() async {
  try {
    await location.getLocation().then((location) {
      LocationData currentLocation = location;
      return currentLocation.latitude;
    });
  } on Exception catch (e) {
    print(e);
  }
}

class _MapScreenState extends State<MapScreen2> {
  String maptheme = '';

  @override
  void initState() {
    super.initState();
    currentLocation = tryGetLocation();
    print(currentLocation);
    DefaultAssetBundle.of(context)
        .loadString("assets/maptheme/map__theme.json")
        .then((value) {
      maptheme = value;
    });
  }

  GoogleMapController _googleMapController;
  Marker _origin;
  Marker _destination;
  Directions _info;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: currentLocation == null
            ? Center(
                child: Text('Votre position n\'a pas pu être récupérée'),
              )
            : Stack(
                // alignment: Alignment.center,
                children: [
                  GoogleMap(
                    myLocationButtonEnabled: true,
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(5.290829562944779, -3.9987824868394926),
                      zoom: 15,
                    ),
                    onMapCreated: (controller)
                        // => _googleMapController = controller,
                        {
                      _googleMapController = controller;
                      controller.setMapStyle(maptheme);
                    },
                    markers: {
                      Marker(
                        markerId: MarkerId('Ma position'),
                        infoWindow: InfoWindow(
                          title: 'Ma position',
                          snippet: '',
                        ),
                        position: LatLng(
                          5.290829562944779,
                          -3.9987824868394926,
                        ),
                      ),
                      Marker(
                        markerId: MarkerId('parking 1'),
                        infoWindow: InfoWindow(
                          title: 'E Parking groupe',
                          // snippet: 'Description du parking',
                        ),
                        position: LatLng(
                          5.322768335185519,
                          -4.018693417154443,
                        ),
                      ),
                      Marker(
                        markerId: MarkerId('parking 2'),
                        infoWindow: InfoWindow(
                          title: 'Parking CIWA',
                          // snippet: 'Description du parking',
                        ),
                        position: LatLng(
                          5.321834130425057,
                          -4.017044098210704,
                        ),
                      ),
                      Marker(
                        markerId: MarkerId('parking 3'),
                        infoWindow: InfoWindow(
                          title: 'Parking de la primature de CI',
                          // snippet: 'Description du parking',
                        ),
                        position: LatLng(
                          5.321080486465312,
                          -4.020195454229709,
                        ),
                      ),
                      Marker(
                        markerId: MarkerId('parking 4'),
                        infoWindow: InfoWindow(
                          title: 'Parking',
                          // snippet: 'Description du parking',
                        ),
                        position: LatLng(
                          5.314829797409216,
                          -4.022018015325297,
                        ),
                      ),
                      Marker(
                        markerId: MarkerId('parking 5'),
                        infoWindow: InfoWindow(
                          title: 'Parking du palais de justice',
                          // snippet: 'Description du parking',
                        ),
                        position: LatLng(
                          5.332378365934216,
                          -4.019995152137439,
                        ),
                      ),
                      if (_origin != null) _origin,
                      if (_destination != null) _destination,
                    },
                    circles: {
                      Circle(
                        circleId: CircleId("1"),
                        center: LatLng(
                          5.324206074026484,
                          -4.021284937593104,
                        ),
                        radius: 1100,
                        strokeWidth: 2,
                        strokeColor: primary__color,
                        fillColor: primary__color.withOpacity(.2),
                      )
                    },
                    polylines: {
                      if (_info != null)
                        Polyline(
                          polylineId: const PolylineId('overview_polyline'),
                          color: Color.fromARGB(255, 58, 92, 197),
                          width: 5,
                          points: _info.polylinePoints
                              .map(
                                (e) => LatLng(
                                  e.latitude,
                                  e.longitude,
                                ),
                              )
                              .toList(),
                        ),
                    },
                    // onTap: _addMarker,
                  ),
                  if (_info != null)
                    Positioned(
                      top: 60.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 145, 19, 19),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            )
                          ],
                        ),
                        child: Text(
                          '${_info.totalDistance}, ${_info.totalDuration}',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 50,
                      // width: 350,
                      margin: EdgeInsets.only(top: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60)),
                      child: Row(
                        children: [
                          Icon(Icons.search_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 250,
                            padding: EdgeInsets.only(bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Ou allons nous ?",
                                hintStyle: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      height: 330,
                      width: 392,
                      padding: EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                        color: dashboard__bg__color,
                      ),
                      child: next(),
                    ),
                  ),
                ],
              ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(top: 0),
          color: dashboard__bg__color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: GNav(
              gap: 8,
              backgroundColor: dashboard__bg__color,
              color: dashboard__bg__color,
              activeColor: secondary__color,
              tabBackgroundColor: dashboard__bg__color2,
              padding: EdgeInsets.all(13),
              tabs: [
                GButton(
                  icon: Icons.person,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => espaceClient()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.map_rounded,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapScreen()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Carte",
                ),
                GButton(
                  icon: Icons.local_parking,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Parkings()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Parkings",
                ),
                GButton(
                  icon: Icons.article_rounded,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ticket()),
                    );
                  },
                  iconColor: secondary__color,
                  text: "Ticket",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _addMarker(LatLng pos) async {
    //   if (_origin == null || (_origin != null && _destination != null)) {
    //     // Origin is not set OR Origin/Destination are both set
    //     // Set origin
    setState(() {
      _origin = Marker(
        markerId: const MarkerId('origin'),
        infoWindow: const InfoWindow(title: 'Origin'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        position: LatLng(
          5.301739008970397,
          -4.009112574877399,
        ),
      );
      //       // Reset destination
      //       _destination = null;

      //       // Reset info
      //       _info = null;
    });
    // },
    //else {
    //     // Origin is already set
    //     // Set destination
    setState(() {
      _destination = Marker(
        markerId: const MarkerId('destination'),
        infoWindow: const InfoWindow(title: 'Destination'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        position: LatLng(
          5.332378365934216,
          -4.019995152137439,
        ),
      );
    });

    // Get directions
    final directions = await DirectionsRepository()
        .getDirections(origin: _origin.position, destination: pos);
    setState(() => _info = directions);
  }
}

class next extends StatelessWidget {
  next({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: options.map((option) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: primary__color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  option,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: parking.map((park) {
              return InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return FractionallySizedBox(
                          heightFactor: 2.1,
                          child: modal(),
                        );
                      });
                },
                child: Container(
                  height: 150,
                  width: 330,
                  margin: EdgeInsets.only(right: 30),
                  decoration: BoxDecoration(
                    color: dashboard__bg__color2,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            park['image'],
                            height: 130,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 180,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 180,
                                child: Text(
                                  park['nom'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'FuturaPT',
                                    fontWeight: FontWeight.w700,
                                    color: secondary__color,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: 180,
                                child: Text(
                                  park['distance'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'FuturaPT',
                                    fontWeight: FontWeight.w600,
                                    color: color__text2,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                width: 180,
                                child: Text(
                                  park['tarif'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'FuturaPT',
                                    fontWeight: FontWeight.w900,
                                    color: secondary__color,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class modal extends StatelessWidget {
  modal({Key key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 440,
      decoration: BoxDecoration(
        color: secondary__color,
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          SizedBox(
            height: 220,
            child: PageView(
              controller: _controller,
              children: [
                Pic1(),
                Pic2(),
                Pic3(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: primary__color, dotHeight: 10, dotWidth: 10),
          ),
          SizedBox(height: 30),
          Text(
            'Parking Plateau',
            style: TextStyle(
                fontSize: 20,
                color: color__text,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 420,
            child: Text(
              'Plateau 2030 près de la grande mosquée, Rue 101BP40 ',
              style: TextStyle(
                fontSize: size__littleText,
                color: color__text,
                fontFamily: 'poppins',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 360,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_searching_rounded,
                  color: primary__color,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('1,4 Km de vous'),
                SizedBox(width: 40),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primary__color,
                  ),
                  child: Text(
                    'P',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'poppins',
                        color: secondary__color),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '20 Places libres',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'poppins',
                      color: primary__color),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 330,
            child: Text(
              'Temps de Stationnement',
              style: TextStyle(
                color: color__text,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                      color: secondary__color,
                      border: Border.all(width: 2, color: primary__color),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text('1 - 2',
                          style: TextStyle(
                              color: color__text,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w900,
                              fontSize: size__commonText)),
                      SizedBox(height: 10),
                      Text('Heures',
                          style: TextStyle(
                              color: color__text,
                              fontFamily: 'poppins',
                              fontSize: 10)),
                      SizedBox(height: 10),
                      Text(
                        '1000F',
                        style: TextStyle(
                            color: color__text,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'poppins',
                            fontSize: size__commonText),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                      color: primary__color,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text('2 - 4',
                          style: TextStyle(
                              color: secondary__color,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w900,
                              fontSize: size__commonText)),
                      SizedBox(height: 10),
                      Text('Heures',
                          style: TextStyle(
                              color: secondary__color,
                              fontFamily: 'poppins',
                              fontSize: 10)),
                      SizedBox(height: 10),
                      Text('2000F',
                          style: TextStyle(
                              color: secondary__color,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'poppins',
                              fontSize: size__commonText)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                      color: secondary__color,
                      border: Border.all(width: 2, color: primary__color),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text('4 - 6',
                          style: TextStyle(
                              color: color__text,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w900,
                              fontSize: size__commonText)),
                      SizedBox(height: 10),
                      Text('Heures',
                          style: TextStyle(
                              color: color__text,
                              fontFamily: 'poppins',
                              fontSize: 10)),
                      SizedBox(height: 10),
                      Text('3000F',
                          style: TextStyle(
                              color: color__text,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'poppins',
                              fontSize: size__commonText)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                      color: secondary__color,
                      border: Border.all(width: 2, color: primary__color),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text('6 - 8',
                          style: TextStyle(
                              color: color__text,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w900,
                              fontSize: size__commonText)),
                      SizedBox(height: 10),
                      Text('Heures',
                          style: TextStyle(
                              color: color__text,
                              fontFamily: 'poppins',
                              fontSize: 10)),
                      SizedBox(height: 10),
                      Text('4000F',
                          style: TextStyle(
                              color: color__text,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'poppins',
                              fontSize: size__commonText)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                color: primary__color,
                borderRadius: BorderRadius.circular(8.0)),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Info__parking()),
                  );
                },
                child: Text(
                  "Plus d'infos",
                  style: TextStyle(
                    fontSize: size__commonText,
                    fontFamily: 'poppins',
                    color: secondary__color,
                    fontWeight: FontWeight.w800,
                  ),
                )),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
