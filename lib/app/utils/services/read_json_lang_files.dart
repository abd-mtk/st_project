import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

Future<Map<String, Map<String, String>>> readJsonLangFiles(
    List<String> fileNames) async {
  Map<String, Map<String, String>> resultMap = {};
  for (String fileName in fileNames) {
    try {
      String content =
          await rootBundle.loadString('assets/languages/$fileName');
      Map<String, dynamic> jsonContent = json.decode(content);

      resultMap[fileName.split('.').first] =
          Map<String, String>.from(jsonContent);
    } catch (e) {
      if (kDebugMode) {
        print('Error reading file $fileName: $e');
      }
      throw Exception('Error reading file $fileName: $e');
    }
  }
  return resultMap;
}
