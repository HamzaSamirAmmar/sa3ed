// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SplashState extends SplashState {
  @override
  final String? apkUrl;
  @override
  final String? baseUrl;
  @override
  final bool isAuth;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$SplashState([void Function(SplashStateBuilder)? updates]) =>
      (new SplashStateBuilder()..update(updates))._build();

  _$SplashState._(
      {this.apkUrl,
      this.baseUrl,
      required this.isAuth,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isAuth, r'SplashState', 'isAuth');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'SplashState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'SplashState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'SplashState', 'message');
  }

  @override
  SplashState rebuild(void Function(SplashStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SplashStateBuilder toBuilder() => new SplashStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplashState &&
        apkUrl == other.apkUrl &&
        baseUrl == other.baseUrl &&
        isAuth == other.isAuth &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apkUrl.hashCode);
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, isAuth.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SplashState')
          ..add('apkUrl', apkUrl)
          ..add('baseUrl', baseUrl)
          ..add('isAuth', isAuth)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class SplashStateBuilder implements Builder<SplashState, SplashStateBuilder> {
  _$SplashState? _$v;

  String? _apkUrl;
  String? get apkUrl => _$this._apkUrl;
  set apkUrl(String? apkUrl) => _$this._apkUrl = apkUrl;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

  bool? _isAuth;
  bool? get isAuth => _$this._isAuth;
  set isAuth(bool? isAuth) => _$this._isAuth = isAuth;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SplashStateBuilder();

  SplashStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apkUrl = $v.apkUrl;
      _baseUrl = $v.baseUrl;
      _isAuth = $v.isAuth;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SplashState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SplashState;
  }

  @override
  void update(void Function(SplashStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SplashState build() => _build();

  _$SplashState _build() {
    final _$result = _$v ??
        new _$SplashState._(
            apkUrl: apkUrl,
            baseUrl: baseUrl,
            isAuth: BuiltValueNullFieldError.checkNotNull(
                isAuth, r'SplashState', 'isAuth'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'SplashState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'SplashState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'SplashState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
