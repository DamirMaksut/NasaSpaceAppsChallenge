import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_app/map/map.dart';
import 'dart:math';

class InputPage extends StatefulWidget {
  LatLng latLng;
  List<Marker> markers;
  InputPage({Key? key,required this.latLng, required this.markers}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Comment',

              ),

            ),
          SizedBox(height: 15,),
            InkWell(
              onTap:(){
                var rng = new Random();

                widget.markers.add(Marker(
                  markerId: MarkerId("$rng"),
                  position: widget.latLng,
                  infoWindow: InfoWindow(
                    title: _controller.text
                  )
                ));
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  MapPage(markers: widget.markers,),
                  ),
                );
              },
              child: Container(
                color: Colors.blue,
                width: 250,
                height: 60,
                child: Center(
                  child:Text("Submit",style: TextStyle(color: Colors.white),)

                ),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}
