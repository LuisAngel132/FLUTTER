import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/block/blocs.dart';
import 'package:untitled2/screens/gps_access_screen.dart';
import 'package:untitled2/screens/loading_screen.dart';

void main()
{
 runApp(
     MultiBlocProvider(
       providers: [
  BlocProvider(create: (context)=> GpsBloc())
       ],
       child: const MapsAPP(),
     )
 );
}



class MapsAPP extends StatelessWidget {
  const MapsAPP({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MapsAPP',
      home: GpsAccessScreen()
    );
  }
}
