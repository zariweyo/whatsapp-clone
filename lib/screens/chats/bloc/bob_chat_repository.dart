import 'package:firebase_ai/firebase_ai.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whoishe/models/famousPeople.dart';

class BobChatRepository {
  late GenerativeModel _currentModel;
  String famous = "";

  BobChatRepository() {
    final googleAI = FirebaseAI.googleAI();
    _currentModel =
        googleAI.generativeModel(model: 'gemini-2.0-flash-lite-001');
    famous = (famousPeople..shuffle()).first;
  }

  Future<String> askBob(String query) async {
    // Provide a prompt that contains text
    final prompt = [
      Content.text("Este es el juego de los personajes."),
      Content.text("el personaje a adivinar es $famous"),
      Content.text("respndes en primera persona, tu eres el personaje"),
      Content.text(
          "Responde solo con 'SI', 'NO', 'No puedo contestar a eso' o 'Bien, lo has acertado'"),
      Content.text(query)
    ];

    // To generate text output, call generateContent with the text input
    final response = await _currentModel.generateContent(prompt);
    return (response.text ?? "");
  }
}
