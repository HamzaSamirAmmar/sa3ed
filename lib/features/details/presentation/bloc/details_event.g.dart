// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_event.dart';

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

class _$GetHelp extends GetHelp {
  @override
  final int id;
  @override
  final bool isOffer;

  factory _$GetHelp([void Function(GetHelpBuilder)? updates]) =>
      (new GetHelpBuilder()..update(updates))._build();

  _$GetHelp._({required this.id, required this.isOffer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GetHelp', 'id');
    BuiltValueNullFieldError.checkNotNull(isOffer, r'GetHelp', 'isOffer');
  }

  @override
  GetHelp rebuild(void Function(GetHelpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHelpBuilder toBuilder() => new GetHelpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetHelp && id == other.id && isOffer == other.isOffer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isOffer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetHelp')
          ..add('id', id)
          ..add('isOffer', isOffer))
        .toString();
  }
}

class GetHelpBuilder implements Builder<GetHelp, GetHelpBuilder> {
  _$GetHelp? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isOffer;
  bool? get isOffer => _$this._isOffer;
  set isOffer(bool? isOffer) => _$this._isOffer = isOffer;

  GetHelpBuilder();

  GetHelpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isOffer = $v.isOffer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetHelp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetHelp;
  }

  @override
  void update(void Function(GetHelpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetHelp build() => _build();

  _$GetHelp _build() {
    final _$result = _$v ??
        new _$GetHelp._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'GetHelp', 'id'),
            isOffer: BuiltValueNullFieldError.checkNotNull(
                isOffer, r'GetHelp', 'isOffer'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
