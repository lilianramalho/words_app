// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'words.freezed.dart';
part 'words.g.dart';

@freezed
class Words with _$Words {
  const factory Words({
    required List<Words> words
  }) = _Words;

  factory Words.fromJson(Map<String, Object?> json)
      => _$WordsFromJson(json);
}