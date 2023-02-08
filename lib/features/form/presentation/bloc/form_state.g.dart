// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FormState extends FormState {
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$FormState([void Function(FormStateBuilder)? updates]) =>
      (new FormStateBuilder()..update(updates))._build();

  _$FormState._(
      {required this.isLoading, required this.error, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, r'FormState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'FormState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'FormState', 'message');
  }

  @override
  FormState rebuild(void Function(FormStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FormStateBuilder toBuilder() => new FormStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FormState &&
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
    return (newBuiltValueToStringHelper(r'FormState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class FormStateBuilder implements Builder<FormState, FormStateBuilder> {
  _$FormState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  FormStateBuilder();

  FormStateBuilder get _$this {
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
  void replace(FormState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FormState;
  }

  @override
  void update(void Function(FormStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FormState build() => _build();

  _$FormState _build() {
    final _$result = _$v ??
        new _$FormState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'FormState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'FormState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'FormState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
