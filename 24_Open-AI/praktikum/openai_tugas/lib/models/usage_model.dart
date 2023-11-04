import 'package:flutter/foundation.dart';

class UsageModel {
  int promptToken;
  int completionToken;
  int totalToken;

  UsageModel({
    required this.promptToken,
    required this.completionToken,
    required this.totalToken,
  });

  factory UsageModel.fromJson(Map<String, dynamic> json) => UsageModel(
        promptToken: json["prompt_tokens"],
        completionToken: json["completion_tokens"],
        totalToken: json["total_tokens"],
      );

  Map<String, dynamic> toJson() => {
        "prompt_tokens": promptToken,
        "completion_tokens": completionToken,
        "total_tokens": totalToken,
      };
}
