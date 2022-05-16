import 'package:fitness_app/abs.dart';
import 'package:fitness_app/favorite.dart';
import 'package:fitness_app/legs.dart';
import 'package:fitness_app/provider/bookmark_model.dart';
import 'package:fitness_app/triceps.dart';
import 'package:fitness_app/legs.dart';
import 'package:fitness_app/location_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/biceps.dart';
import 'package:fitness_app/Todo.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:fitness_app/favorite.dart';

void main() {
  runApp(
      //ChangeNotifierProvider();
      const MaterialApp(

    title: 'Fitness4U',
    home: FirstRoute(),
  ));
  ChangeNotifierProvider(create: (context) => BookmarkBloc(), child: FirstRoute());
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Fitness4U",textAlign: TextAlign.center,
              style: TextStyle(
               fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white
              ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  child: Text("Map For Gyms In Chico"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MapSample()),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  child: Text("Abs Workout Tutorials"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Abs()),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  child: Text("Biceps Workout Tutorials"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Biceps()),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  child: Text("Triceps Workout Tutorials"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Triceps()),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  child: Text("Legs Workout Tutorials"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Legs()),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  child: Text("Add Workouts To Do"),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ToDo()),
                    );
                  },
                ),
              ),
            ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller = Completer();
  final TextEditingController _searchController = TextEditingController();

  static const Marker _kGooglePlexMarker = Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'City of Chico'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(39.728493, -121.837479),
  );

  static final Marker _wrec = Marker(
      markerId: MarkerId('_wrec'),
      infoWindow: InfoWindow(title: 'Chico State WREC'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(39.7258, -121.8480));

  static final Marker _inmotion = Marker(
      markerId: MarkerId('_inmotion'),
      infoWindow: InfoWindow(title: 'In Motion Fitness'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(39.75008, -121.82444));

  static final Marker _anytimefitness = Marker(
      markerId: MarkerId('_anytimefitness'),
      infoWindow: InfoWindow(title: 'Anytime Fitness'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(39.71918, -121.79569));

  static final Marker _fusionfitness = Marker(
      markerId: MarkerId('_fusionfitness'),
      infoWindow: InfoWindow(title: 'Fusion Fitness'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(39.74523, -121.85178));

  static final Marker _9round = Marker(
      markerId: MarkerId('_9round'),
      infoWindow: InfoWindow(title: '9round Fitness'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(39.73920, -121.83490));

  static final Marker _planetfitness = Marker(
      markerId: MarkerId('_planetfitness'),
      infoWindow: InfoWindow(title: 'Planet Fitness'),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(39.73052, -121.80601));

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(39.728493, -121.837479),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _searchController,
                  textCapitalization: TextCapitalization.words,
                  decoration: const InputDecoration(hintText: 'Search by City'),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              IconButton(
                onPressed: () async {
                  var place =
                      await LocationService().getPlace(_searchController.text);
                  _goToPlace(place);
                },
                icon: const Icon(Icons.search),
              ),
            ],
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              markers: {
                _kGooglePlexMarker,
                _wrec,
                _inmotion,
                _anytimefitness,
                _fusionfitness,
                _9round,
                _planetfitness
              },
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _goToPlace(Map<String, dynamic> place) async {
    final double lat = place['geometry']['location']['lat'];
    final double lng = place['geometry']['location']['lng'];
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12)));
  }
}
