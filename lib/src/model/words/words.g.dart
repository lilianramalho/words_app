// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'words.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Words _$$_WordsFromJson(Map<String, dynamic> json) => _$_Words(
      words: (json['words'] as List<dynamic>)
          .map((e) => Words.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WordsToJson(_$_Words instance) => <String, dynamic>{
      'words': instance.words,
    };
