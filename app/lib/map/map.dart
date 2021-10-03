import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../input_page.dart';
import 'history.dart';

class MapPage extends StatefulWidget {
   MapPage({Key? key, required this.markers}) : super(key: key);
  int lastId=1;

   List<Marker> markers;
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.history),
        onPressed: (){
          List<String> notes=["Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the "];
          // widget.markers.forEach(
          //   (marker){
          //     notes.add(marker.infoWindow.title!);
          // }
          for(int i=1;i< widget.markers.length; i++){
            notes.add(widget.markers[i].infoWindow.title!);
          }


          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HistoryPage(notes:notes)),
          );
        },
      ),
      body: GoogleMap(
        myLocationButtonEnabled: false,
        markers: widget.markers.toSet(),
        padding: EdgeInsets.symmetric(vertical: 90),
        onTap: (value){
          Navigator.pushReplacement<void, void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>  InputPage(latLng: value,markers: widget.markers,),
            ),
          );
        },
          initialCameraPosition: CameraPosition(target:LatLng(43.238949,76.889709) , zoom: 15)),
    );
  }
  void addMarker(LatLng pos){
   setState(() {
     widget.markers.add(Marker(
       markerId: MarkerId('${widget.lastId}'),
       infoWindow: InfoWindow(title:'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the ')
     ,position: pos
     ));
   });
  }
}
