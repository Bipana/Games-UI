// GENERATED CODE - DO NOT MODIFY BY HAND

part of listDetails;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListDetails> _$listDetailsSerializer = new _$ListDetailsSerializer();

class _$ListDetailsSerializer implements StructuredSerializer<ListDetails> {
  @override
  final Iterable<Type> types = const [ListDetails, _$ListDetails];
  @override
  final String wireName = 'ListDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ResultView)])),
    ];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ListDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ResultView)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ListDetails extends ListDetails {
  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<ResultView> results;

  factory _$ListDetails([void Function(ListDetailsBuilder)? updates]) =>
      (new ListDetailsBuilder()..update(updates)).build();

  _$ListDetails._({this.count, this.next, this.previous, required this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(results, 'ListDetails', 'results');
  }

  @override
  ListDetails rebuild(void Function(ListDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListDetailsBuilder toBuilder() => new ListDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListDetails &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListDetails')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class ListDetailsBuilder implements Builder<ListDetails, ListDetailsBuilder> {
  _$ListDetails? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<ResultView>? _results;
  ListBuilder<ResultView> get results =>
      _$this._results ??= new ListBuilder<ResultView>();
  set results(ListBuilder<ResultView>? results) => _$this._results = results;

  ListDetailsBuilder();

  ListDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListDetails;
  }

  @override
  void update(void Function(ListDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListDetails build() {
    _$ListDetails _$result;
    try {
      _$result = _$v ??
          new _$ListDetails._(
              count: count,
              next: next,
              previous: previous,
              results: results.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
