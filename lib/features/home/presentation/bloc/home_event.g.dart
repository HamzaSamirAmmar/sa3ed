// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_event.dart';

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

class _$GetAllGovernorates extends GetAllGovernorates {
  factory _$GetAllGovernorates(
          [void Function(GetAllGovernoratesBuilder)? updates]) =>
      (new GetAllGovernoratesBuilder()..update(updates))._build();

  _$GetAllGovernorates._() : super._();

  @override
  GetAllGovernorates rebuild(
          void Function(GetAllGovernoratesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllGovernoratesBuilder toBuilder() =>
      new GetAllGovernoratesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllGovernorates;
  }

  @override
  int get hashCode {
    return 377997545;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAllGovernorates').toString();
  }
}

class GetAllGovernoratesBuilder
    implements Builder<GetAllGovernorates, GetAllGovernoratesBuilder> {
  _$GetAllGovernorates? _$v;

  GetAllGovernoratesBuilder();

  @override
  void replace(GetAllGovernorates other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllGovernorates;
  }

  @override
  void update(void Function(GetAllGovernoratesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllGovernorates build() => _build();

  _$GetAllGovernorates _build() {
    final _$result = _$v ?? new _$GetAllGovernorates._();
    replace(_$result);
    return _$result;
  }
}

class _$GetAllHelpTypes extends GetAllHelpTypes {
  factory _$GetAllHelpTypes([void Function(GetAllHelpTypesBuilder)? updates]) =>
      (new GetAllHelpTypesBuilder()..update(updates))._build();

  _$GetAllHelpTypes._() : super._();

  @override
  GetAllHelpTypes rebuild(void Function(GetAllHelpTypesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllHelpTypesBuilder toBuilder() =>
      new GetAllHelpTypesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllHelpTypes;
  }

  @override
  int get hashCode {
    return 361984305;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAllHelpTypes').toString();
  }
}

class GetAllHelpTypesBuilder
    implements Builder<GetAllHelpTypes, GetAllHelpTypesBuilder> {
  _$GetAllHelpTypes? _$v;

  GetAllHelpTypesBuilder();

  @override
  void replace(GetAllHelpTypes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllHelpTypes;
  }

  @override
  void update(void Function(GetAllHelpTypesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllHelpTypes build() => _build();

  _$GetAllHelpTypes _build() {
    final _$result = _$v ?? new _$GetAllHelpTypes._();
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
