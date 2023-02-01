import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_gmaps/constantes/const.dart';
import 'package:flutter_gmaps/map.dart';
import 'package:flutter_gmaps/part1/Parkings.dart';
import 'package:flutter_gmaps/part1/Presentation.dart';
import 'package:flutter_gmaps/part1/type/type1.dart';
import 'package:flutter_gmaps/part1/type/type2.dart';
import 'package:flutter_gmaps/part1/type/type3.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_gmaps/directions_model.dart';
import 'package:flutter_gmaps/directions_repository.dart';
import 'package:location/location.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'espaceClient.dart';

LocationData currentLocation;
Future<void> getCurrentLocation() async {
  Location location = await Location();

  location.getLocation().then((location) {
    currentLocation = location;
  });
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  getCurrentLocation();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: secondary__color,
      ),
      home: Presentation(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  String maptheme = '';
  final _controller = PageController();
  get currentLocation => null;

  @override
  initState() {
    super.initState();
    DefaultAssetBundle.of(context)
        .loadString("assets/maptheme/map__theme.json")
        .then((value) {
      maptheme = value;
    });
    getCurrentLocation();
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
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: secondary__color,
      //   centerTitle: false,
      //   actions: [
      //     if (_origin != null)
      //       TextButton(
      //         onPressed: () => _googleMapController.animateCamera(
      //           CameraUpdate.newCameraPosition(
      //             CameraPosition(
      //               target: _origin.position,
      //               zoom: 14.5,
      //               tilt: 50.0,
      //             ),
      //           ),
      //         ),
      //         style: TextButton.styleFrom(
      //           foregroundColor: Colors.green,
      //           textStyle: const TextStyle(fontWeight: FontWeight.w600),
      //         ),
      //         child: const Text('ORIGIN'),
      //       ),
      //     if (_destination != null)
      //       TextButton(
      //         onPressed: () => _googleMapController.animateCamera(
      //           CameraUpdate.newCameraPosition(
      //             CameraPosition(
      //               target: _destination.position,
      //               zoom: 14.5,
      //               tilt: 50.0,
      //             ),
      //           ),
      //         ),
      //         style: TextButton.styleFrom(
      //           foregroundColor: Colors.blue,
      //           textStyle: const TextStyle(fontWeight: FontWeight.w600),
      //         ),
      //         child: const Text('DEST'),
      //       )
      //   ],
      // ),
      backgroundColor: secondary__color,
      body:
          // currentLocation == null
          //     ? Center(
          //         child: Text('Votre position n\'a pas pu être récupérée'),
          //       ):
          Stack(
        // alignment: Alignment.center,
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            zoomControlsEnabled: true,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                // currentLocation.latitude,
                // currentLocation.longitude,
                5.301739008970397,
                -4.009112574877399,
              ),
              zoom: 15,
            ),
            onMapCreated: (controller) => _googleMapController = controller,
            //     {
            //   controller.setMapStyle(maptheme),
            // },
            markers: {
              Marker(
                markerId: MarkerId('currentLocation'),
                infoWindow: InfoWindow(
                  title: 'Parking Treichville',
                  snippet: 'Description du parking',
                ),
                position: LatLng(
                  5.290829562944779,
                  -3.9987824868394926,
                ),
              ),
              if (_origin != null) _origin,
              if (_destination != null) _destination,
            },
            polylines: {
              if (_info != null)
                Polyline(
                  polylineId: PolylineId('overview_polyline'),
                  color: primary__color,
                  width: 5,
                  points: _info.polylinePoints
                      .map(
                        (e) => LatLng(e.latitude, e.longitude),
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
                    fontSize: size__commonText,
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(60)),
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
              height: 400,
              width: 420,
              decoration: BoxDecoration(
                color: dashboard__bg__color,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(60.0),
                  topLeft: Radius.circular(60.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "Quel type de véhicule voulez vous stationner ?",
                      style: TextStyle(
                        fontFamily: 'FuturaPT',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: secondary__color,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 243,
                    child: PageView(
                      controller: _controller,
                      children: [
                        type2(),
                        type1(),
                        type3(),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: primary__color,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => espaceClient()),
                  // );
                },
                iconColor: secondary__color,
                text: "Home",
              ),
              GButton(
                icon: Icons.map_rounded,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapScreen2()),
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
                icon: Icons.article,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Parkings()),
                  );
                },
                iconColor: secondary__color,
                text: "Ticket",
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addMarker(LatLng pos) async {
    if (_origin == null || (_origin != null && _destination != null)) {
      // Origin is not set OR Origin/Destination are both set
      // Set origin
      setState(() {
        _origin = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
        );
        // Reset destination
        _destination = null;

        // Reset info
        _info = null;
      });
    } else {
      // Origin is already set
      // Set destination
      setState(() {
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos,
        );
      });

      // Get directions
      final directions = await DirectionsRepository()
          .getDirections(origin: _origin.position, destination: pos);
      setState(() => _info = directions);
    }
  }
}
