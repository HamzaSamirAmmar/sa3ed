// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetailsState extends DetailsState {
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$DetailsState([void Function(DetailsStateBuilder)? updates]) =>
      (new DetailsStateBuilder()..update(updates))._build();

  _$DetailsState._(
      {required this.isLoading, required this.error, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'DetailsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'DetailsState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'DetailsState', 'message');
  }

  @override
  DetailsState rebuild(void Function(DetailsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailsStateBuilder toBuilder() => new DetailsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailsState &&
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
    return (newBuiltValueToStringHelper(r'DetailsState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class DetailsStateBuilder
    implements Builder<DetailsState, DetailsStateBuilder> {
  _$DetailsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DetailsStateBuilder();

  DetailsStateBuilder get _$this {
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
  void replace(DetailsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetailsState;
  }

  @override
  void update(void Function(DetailsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetailsState build() => _build();

  _$DetailsState _build() {
    final _$result = _$v ??
        new _$DetailsState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'DetailsState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'DetailsState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'DetailsState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
