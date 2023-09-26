import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:project_1/components/toolbar.dart';


class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Nearby Page',),
      body: FlutterMap(options: MapOptions(
        center: LatLng(41.0370,28.9851),
        zoom: 10,
      ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
          ),
          MarkerLayer(

            markers: [

              Marker(point: LatLng(41.0370,28.9851), builder: (context){
                return Column(
                  children: [
                     Container(
                       padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4,),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(14),),
                       ),
                       child: Text('Username',style: TextStyle(color:Colors.black),),
                     ),
                    SvgPicture.asset('assets/location.svg',colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),)
                  ],
                );
              },
                width: 100,
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
