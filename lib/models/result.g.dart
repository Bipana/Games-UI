// GENERATED CODE - DO NOT MODIFY BY HAND

part of result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ResultView> _$resultViewSerializer = new _$ResultViewSerializer();

class _$ResultViewSerializer implements StructuredSerializer<ResultView> {
  @override
  final Iterable<Type> types = const [ResultView, _$ResultView];
  @override
  final String wireName = 'ResultView';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResultView object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'games_count',
      serializers.serialize(object.gamesCount,
          specifiedType: const FullType(int)),
      'games',
      serializers.serialize(object.games,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GameView)])),
    ];
    Object? value;
    value = object.imageBackground;
    if (value != null) {
      result
        ..add('image_background')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ResultView deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultViewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'games_count':
          result.gamesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'image_background':
          result.imageBackground = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'games':
          result.games.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GameView)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ResultView extends ResultView {
  @override
  final int id;
  @override
  final String slug;
  @override
  final String name;
  @override
  final int gamesCount;
  @override
  final String? imageBackground;
  @override
  final String? image;
  @override
  final BuiltList<GameView> games;

  factory _$ResultView([void Function(ResultViewBuilder)? updates]) =>
      (new ResultViewBuilder()..update(updates)).build();

  _$ResultView._(
      {required this.id,
      required this.slug,
      required this.name,
      required this.gamesCount,
      this.imageBackground,
      this.image,
      required this.games})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ResultView', 'id');
    BuiltValueNullFieldError.checkNotNull(slug, 'ResultView', 'slug');
    BuiltValueNullFieldError.checkNotNull(name, 'ResultView', 'name');
    BuiltValueNullFieldError.checkNotNull(
        gamesCount, 'ResultView', 'gamesCount');
    BuiltValueNullFieldError.checkNotNull(games, 'ResultView', 'games');
  }

  @override
  ResultView rebuild(void Function(ResultViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultViewBuilder toBuilder() => new ResultViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResultView &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        gamesCount == other.gamesCount &&
        imageBackground == other.imageBackground &&
        image == other.image &&
        games == other.games;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), slug.hashCode), name.hashCode),
                    gamesCount.hashCode),
                imageBackground.hashCode),
            image.hashCode),
        games.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResultView')
          ..add('id', id)
          ..add('slug', slug)
          ..add('name', name)
          ..add('gamesCount', gamesCount)
          ..add('imageBackground', imageBackground)
          ..add('image', image)
          ..add('games', games))
        .toString();
  }
}

class ResultViewBuilder implements Builder<ResultView, ResultViewBuilder> {
  _$ResultView? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _gamesCount;
  int? get gamesCount => _$this._gamesCount;
  set gamesCount(int? gamesCount) => _$this._gamesCount = gamesCount;

  String? _imageBackground;
  String? get imageBackground => _$this._imageBackground;
  set imageBackground(String? imageBackground) =>
      _$this._imageBackground = imageBackground;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ListBuilder<GameView>? _games;
  ListBuilder<GameView> get games =>
      _$this._games ??= new ListBuilder<GameView>();
  set games(ListBuilder<GameView>? games) => _$this._games = games;

  ResultViewBuilder();

  ResultViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _slug = $v.slug;
      _name = $v.name;
      _gamesCount = $v.gamesCount;
      _imageBackground = $v.imageBackground;
      _image = $v.image;
      _games = $v.games.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResultView other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResultView;
  }

  @override
  void update(void Function(ResultViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResultView build() {
    _$ResultView _$result;
    try {
      _$result = _$v ??
          new _$ResultView._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'ResultView', 'id'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'ResultView', 'slug'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'ResultView', 'name'),
              gamesCount: BuiltValueNullFieldError.checkNotNull(
                  gamesCount, 'ResultView', 'gamesCount'),
              imageBackground: imageBackground,
              image: image,
              games: games.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'games';
        games.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ResultView', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
