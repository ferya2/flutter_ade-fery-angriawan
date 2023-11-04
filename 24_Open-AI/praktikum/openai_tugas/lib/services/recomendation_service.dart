import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:openai_tugas/constants/open_ai.dart';
import 'package:openai_tugas/models/open_ai_model.dart';
import 'package:openai_tugas/models/usage_model.dart';

class RecomendationService {
  static Future<GPTData> getRecommendation({
    required String harga,
    required String kamera,
    required String storage,
  }) async {
    late GPTData gptData = GPTData(
      id: "",
      object: "",
      created: 0,
      model: "",
      choices: [],
      usage: UsageModel(
        promptToken: 0,
        completionToken: 0,
        totalToken: 0,
      ),
    );

    try {
      var url = Uri.parse("https://api.openai.com/v1/completions");
      Map<String, String> headers = {
        "Content-Type": "application/json",
        "Charset": "utf-8",
        "Authorization": "Bearer $apiKey",
      };
      String prompt =
          "Rekomendasi smartphone dengan $harga dan spesifikasi $kamera dan spesifikasi $storage adalah:  karena smartphone tersebut :";
      final data = jsonEncode({
        "model": "text-davinci-003",
        "prompt": prompt,
        "max_tokens": 250,
        "temperature": 0.7,
        "top_p": 1,
        "frequency_penalty": 0,
        "presence_penalty": 0,
      });
      final response = await http.post(
        url,
        headers: headers,
        body: data,
      );

      if (response.statusCode == 200) {
        gptData = gptDataFromJson(response.body);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return gptData;
  }
}
