import 'package:google_ml_kit/google_ml_kit.dart';

class TranslationApi{
  static Future<String?> translateText(String recognizedText) async{
    try{
      final langIdentifier = LanguageIdentifier(confidenceThreshold: 0.5);
      final languageCode = 
      await langIdentifier.identifyLanguage(recognizedText);
      langIdentifier.close();
      final translator = OnDeviceTranslator(
        sourceLanguage: TranslateLanguage.values
        .firstWhere((element) => element.bcpCode == languageCode),
         targetLanguage: TranslateLanguage.hindi,);

         final translatedText = await translator.translateText(recognizedText);
         translator.close;
         return translatedText;
 
    }
    catch(e){
      return null;
    }
  }
}