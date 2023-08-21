// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'word.freezed.dart';
part 'word.g.dart';

@freezed
class Word with _$Word {
  const factory Word({
    required String word,
    @Default(false) bool favorite,
  }) = _Word;

  factory Word.fromJson(Map<String, Object?> json)
      => _$WordFromJson(json);
}