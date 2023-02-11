// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_event.dart';

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

class _$SendAuthData extends SendAuthData {
  @override
  final String name;
  @override
  final String password;
  @override
  final bool isLogin;

  factory _$SendAuthData([void Function(SendAuthDataBuilder)? updates]) =>
      (new SendAuthDataBuilder()..update(updates))._build();

  _$SendAuthData._(
      {required this.name, required this.password, required this.isLogin})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'SendAuthData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        password, r'SendAuthData', 'password');
    BuiltValueNullFieldError.checkNotNull(isLogin, r'SendAuthData', 'isLogin');
  }

  @override
  SendAuthData rebuild(void Function(SendAuthDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendAuthDataBuilder toBuilder() => new SendAuthDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendAuthData &&
        name == other.name &&
        password == other.password &&
        isLogin == other.isLogin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, isLogin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendAuthData')
          ..add('name', name)
          ..add('password', password)
          ..add('isLogin', isLogin))
        .toString();
  }
}

class SendAuthDataBuilder
    implements Builder<SendAuthData, SendAuthDataBuilder> {
  _$SendAuthData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _isLogin;
  bool? get isLogin => _$this._isLogin;
  set isLogin(bool? isLogin) => _$this._isLogin = isLogin;

  SendAuthDataBuilder();

  SendAuthDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _password = $v.password;
      _isLogin = $v.isLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendAuthData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendAuthData;
  }

  @override
  void update(void Function(SendAuthDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendAuthData build() => _build();

  _$SendAuthData _build() {
    final _$result = _$v ??
        new _$SendAuthData._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SendAuthData', 'name'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'SendAuthData', 'password'),
            isLogin: BuiltValueNullFieldError.checkNotNull(
                isLogin, r'SendAuthData', 'isLogin'));
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
