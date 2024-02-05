
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:saarthi/widget/recognition_api.dart';
import 'package:saarthi/widget/translation_api.dart';

class CameraWidget extends StatefulWidget {
  final CameraDescription camera;
  const CameraWidget({required this.camera, super.key});

  @override
  State<CameraWidget> createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  late CameraController cameraController;
  late Future<void> initCameraFn;
  String? shownText;
  @override
  void initState(){
    //TODO: implement initState

    super.initState();
    cameraController = CameraController(
       widget.camera,
       ResolutionPreset.max,
    );
    initCameraFn = cameraController.initialize();

  }
  @override
  void dispose(){
    super.dispose();
    cameraController.dispose();

  }
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder(
          future: initCameraFn, 
          builder: ((context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
        
            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: CameraPreview(cameraController));
        
          }),
          ),
          Positioned(
            
            bottom: 16,
            left: MediaQuery.of(context).size.width / 2 - 28, // Adjust the value based on the size of your FloatingActionButton
            child: FloatingActionButton(onPressed: () async{
              final image = await cameraController.takePicture();
              final recognizedText =  await RecognitionApi.recognizeText(
                InputImage.fromFile(File(image.path)
                ),
                );
                if(recognizedText == null) return;
                final translatedText = await TranslationApi.translateText(recognizedText);
                setState(() {
                  shownText = translatedText;
                });
            },
          child: const Icon(Icons.translate),
          ),
          ),

          if(shownText != null)
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.black45,
              child: Text(
                shownText!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )

          
      ],
    );
  }
}