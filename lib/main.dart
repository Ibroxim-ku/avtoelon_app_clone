import 'package:avto_elon_clone/app.dart';
import 'package:avto_elon_clone/core/constans/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  Gemini.init(apiKey: GIMINI_API_KEY);
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
