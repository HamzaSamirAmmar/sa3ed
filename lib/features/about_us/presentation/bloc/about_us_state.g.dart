// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_us_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AboutUsState extends AboutUsState {
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$AboutUsState([void Function(AboutUsStateBuilder)? updates]) =>
      (new AboutUsStateBuilder()..update(updates))._build();

  _$AboutUsState._(
      {required this.isLoading, required this.error, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'AboutUsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'AboutUsState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'AboutUsState', 'message');
  }

  @override
  AboutUsState rebuild(void Function(AboutUsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AboutUsStateBuilder toBuilder() => new AboutUsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AboutUsState &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AboutUsState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class AboutUsStateBuilder
    implements Builder<AboutUsState, AboutUsStateBuilder> {
  _$AboutUsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AboutUsStateBuilder();

  AboutUsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AboutUsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AboutUsState;
  }

  @override
  void update(void Function(AboutUsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AboutUsState build() => _build();

  _$AboutUsState _build() {
    final _$result = _$v ??
        new _$AboutUsState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'AboutUsState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'AboutUsState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'AboutUsState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
