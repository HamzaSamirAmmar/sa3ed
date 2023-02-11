// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClearMessage extends ClearMessage {
  factory _$ClearMessage([void Function(ClearMessageBuilder)? updates]) =>
      (new ClearMessageBuilder()..update(updates))._build();

  _$ClearMessage._() : super._();

  @override
  ClearMessage rebuild(void Function(ClearMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearMessageBuilder toBuilder() => new ClearMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearMessage;
  }

  @override
  int get hashCode {
    return 147402354;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ClearMessage').toString();
  }
}

class ClearMessageBuilder
    implements Builder<ClearMessage, ClearMessageBuilder> {
  _$ClearMessage? _$v;

  ClearMessageBuilder();

  @override
  void replace(ClearMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearMessage;
  }

  @override
  void update(void Function(ClearMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearMessage build() => _build();

  _$ClearMessage _build() {
    final _$result = _$v ?? new _$ClearMessage._();
    replace(_$result);
    return _$result;
  }
}

class _$CheckAuth extends CheckAuth {
  factory _$CheckAuth([void Function(CheckAuthBuilder)? updates]) =>
      (new CheckAuthBuilder()..update(updates))._build();

  _$CheckAuth._() : super._();

  @override
  CheckAuth rebuild(void Function(CheckAuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckAuthBuilder toBuilder() => new CheckAuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckAuth;
  }

  @override
  int get hashCode {
    return 995571189;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'CheckAuth').toString();
  }
}

class CheckAuthBuilder implements Builder<CheckAuth, CheckAuthBuilder> {
  _$CheckAuth? _$v;

  CheckAuthBuilder();

  @override
  void replace(CheckAuth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckAuth;
  }

  @override
  void update(void Function(CheckAuthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckAuth build() => _build();

  _$CheckAuth _build() {
    final _$result = _$v ?? new _$CheckAuth._();
    replace(_$result);
    return _$result;
  }
}

class _$CheckVersion extends CheckVersion {
  factory _$CheckVersion([void Function(CheckVersionBuilder)? updates]) =>
      (new CheckVersionBuilder()..update(updates))._build();

  _$CheckVersion._() : super._();

  @override
  CheckVersion rebuild(void Function(CheckVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckVersionBuilder toBuilder() => new CheckVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckVersion;
  }

  @override
  int get hashCode {
    return 647287479;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'CheckVersion').toString();
  }
}

class CheckVersionBuilder
    implements Builder<CheckVersion, CheckVersionBuilder> {
  _$CheckVersion? _$v;

  CheckVersionBuilder();

  @override
  void replace(CheckVersion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckVersion;
  }

  @override
  void update(void Function(CheckVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckVersion build() => _build();

  _$CheckVersion _build() {
    final _$result = _$v ?? new _$CheckVersion._();
    replace(_$result);
    return _$result;
  }
}

class _$ReInitState extends ReInitState {
  @override
  final Function? onStateReInitialized;

  factory _$ReInitState([void Function(ReInitStateBuilder)? updates]) =>
      (new ReInitStateBuilder()..update(updates))._build();

  _$ReInitState._({this.onStateReInitialized}) : super._();

  @override
  ReInitState rebuild(void Function(ReInitStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReInitStateBuilder toBuilder() => new ReInitStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReInitState &&
        onStateReInitialized == other.onStateReInitialized;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, onStateReInitialized.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReInitState')
          ..add('onStateReInitialized', onStateReInitialized))
        .toString();
  }
}

class ReInitStateBuilder implements Builder<ReInitState, ReInitStateBuilder> {
  _$ReInitState? _$v;

  Function? _onStateReInitialized;
  Function? get onStateReInitialized => _$this._onStateReInitialized;
  set onStateReInitialized(Function? onStateReInitialized) =>
      _$this._onStateReInitialized = onStateReInitialized;

  ReInitStateBuilder();

  ReInitStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onStateReInitialized = $v.onStateReInitialized;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReInitState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReInitState;
  }

  @override
  void update(void Function(ReInitStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReInitState build() => _build();

  _$ReInitState _build() {
    final _$result =
        _$v ?? new _$ReInitState._(onStateReInitialized: onStateReInitialized);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
