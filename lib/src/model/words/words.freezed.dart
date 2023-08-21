// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'words.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Words _$WordsFromJson(Map<String, dynamic> json) {
  return _Words.fromJson(json);
}

/// @nodoc
mixin _$Words {
  List<Words> get words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordsCopyWith<Words> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsCopyWith<$Res> {
  factory $WordsCopyWith(Words value, $Res Function(Words) then) =
      _$WordsCopyWithImpl<$Res, Words>;
  @useResult
  $Res call({List<Words> words});
}

/// @nodoc
class _$WordsCopyWithImpl<$Res, $Val extends Words>
    implements $WordsCopyWith<$Res> {
  _$WordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Words>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordsCopyWith<$Res> implements $WordsCopyWith<$Res> {
  factory _$$_WordsCopyWith(_$_Words value, $Res Function(_$_Words) then) =
      __$$_WordsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Words> words});
}

/// @nodoc
class __$$_WordsCopyWithImpl<$Res> extends _$WordsCopyWithImpl<$Res, _$_Words>
    implements _$$_WordsCopyWith<$Res> {
  __$$_WordsCopyWithImpl(_$_Words _value, $Res Function(_$_Words) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$_Words(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Words>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Words with DiagnosticableTreeMixin implements _Words {
  const _$_Words({required final List<Words> words}) : _words = words;

  factory _$_Words.fromJson(Map<String, dynamic> json) =>
      _$$_WordsFromJson(json);

  final List<Words> _words;
  @override
  List<Words> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Words(words: $words)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Words'))
      ..add(DiagnosticsProperty('words', words));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Words &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_words));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordsCopyWith<_$_Words> get copyWith =>
      __$$_WordsCopyWithImpl<_$_Words>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordsToJson(
      this,
    );
  }
}

abstract class _Words implements Words {
  const factory _Words({required final List<Words> words}) = _$_Words;

  factory _Words.fromJson(Map<String, dynamic> json) = _$_Words.fromJson;

  @override
  List<Words> get words;
  @override
  @JsonKey(ignore: true)
  _$$_WordsCopyWith<_$_Words> get copyWith =>
      throw _privateConstructorUsedError;
}
