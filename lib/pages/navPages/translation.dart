import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:saarthi/widget/camera_widget.dart';

class Translate extends StatefulWidget {
  const Translate({super.key});

  @override
  State<Translate> createState() => _TranslateState();
}

class _TranslateState extends State<Translate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<CameraDescription>>( 
        future:  availableCameras(),
        builder: ((context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator.adaptive() ,);
          }

          if(snapshot.hasError || !snapshot.hasData){
            return const Center(child: Text('Error'),);
          }

          final cameras = snapshot.data!.first;
          return CameraWidget(camera : cameras);

        }),
        )
      );
  }
}