import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum Language {
  @JsonValue('Dart')
  dart,
  @JsonValue('Java')
  java,
  @JsonValue('Kotlin')
  kotlin,
  @JsonValue('Swift')
  swift,
  @JsonValue('TypeScript')
  typeScript,
  @JsonValue('JavaScript')
  javaScript,
  @JsonValue('Python')
  python,
  @JsonValue('Ruby')
  ruby,
  @JsonValue('Php')
  php,
  @JsonValue('Go')
  go,
  @JsonValue('C')
  c,
  @JsonValue('CSharp')
  csharp,
  @JsonValue('C++')
  cpp,
  @JsonValue('Rust')
  rust,
}

extension LanguageExtension on Language {
  String get name {
    switch (this) {
      case Language.dart:
        return 'Dart';
      case Language.java:
        return 'Java';
      case Language.kotlin:
        return 'Kotlin';
      case Language.swift:
        return 'Swift';
      case Language.typeScript:
        return 'TypeScript';
      case Language.javaScript:
        return 'JavaScript';
      case Language.python:
        return 'Python';
      case Language.ruby:
        return 'Ruby';
      case Language.php:
        return 'Php';
      case Language.go:
        return 'Go';
      case Language.c:
        return 'C';
      case Language.csharp:
        return 'CSharp';
      case Language.cpp:
        return 'C++';
      case Language.rust:
        return 'Rust';
    }
  }

  // reference: https://raw.githubusercontent.com/ozh/github-colors/master/colors.json
  Color get color {
    switch (this) {
      case Language.dart:
        return const Color(0xFF00B4AB);
      case Language.java:
        return const Color(0xFFE76F00);
      case Language.kotlin:
        return const Color(0xFF7952B3);
      case Language.swift:
        return const Color(0xFFFC4A3C);
      case Language.typeScript:
        return const Color(0xFF007ACC);
      case Language.javaScript:
        return const Color(0xFFF1E05A);
      case Language.python:
        return const Color(0xFF3572A5);
      case Language.ruby:
        return const Color(0xFF701516);
      case Language.php:
        return const Color(0xFF4F5D95);
      case Language.go:
        return const Color(0xFF00ADD8);
      case Language.c:
        return const Color(0xFF555555);
      case Language.csharp:
        return const Color(0xFF178600);
      case Language.cpp:
        return const Color(0xFFF34B7D);
      case Language.rust:
        return const Color(0xFFDEA584);
    }
  }
}
