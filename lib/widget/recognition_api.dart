import 'package:google_ml_kit/google_ml_kit.dart';

class RecognitionApi{
  static Future<String?> recognizeText(InputImage inputImage) async{
    try{
      final textRecognizer = TextRecognizer();
      final recognizedText = await textRecognizer.processImage(inputImage);
      textRecognizer.close();
      return recognizedText.text;
    }
    catch(e){
      return null;
    }
  }
}