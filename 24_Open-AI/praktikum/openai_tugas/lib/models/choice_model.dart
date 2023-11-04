class ChoiceData{
  String text;
  int index;
  dynamic logProbs;
  dynamic finishReason;

  ChoiceData({
    required this.text,
    required this.index,
    required this.logProbs,
    required this.finishReason,
  });

  factory ChoiceData.fromJson(Map<String, dynamic> json) => ChoiceData(
    text: json["text"],
    index : json["index"],
    logProbs: json["logprobs"],
    finishReason: json["finish_reason"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "index": index,
    "logprobs": logProbs,
    "finish_reason": finishReason,
  };    
  
  
}