// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helpful_information_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HelpfulInformationState extends HelpfulInformationState {
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$HelpfulInformationState(
          [void Function(HelpfulInformationStateBuilder)? updates]) =>
      (new HelpfulInformationStateBuilder()..update(updates))._build();

  _$HelpfulInformationState._(
      {required this.isLoading, required this.error, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'HelpfulInformationState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        error, r'HelpfulInformationState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'HelpfulInformationState', 'message');
  }

  @override
  HelpfulInformationState rebuild(
          void Function(HelpfulInformationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HelpfulInformationStateBuilder toBuilder() =>
      new HelpfulInformationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HelpfulInformationState &&
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
    return (newBuiltValueToStringHelper(r'HelpfulInformationState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class HelpfulInformationStateBuilder
    implements
        Builder<HelpfulInformationState, HelpfulInformationStateBuilder> {
  _$HelpfulInformationState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HelpfulInformationStateBuilder();

  HelpfulInformationStateBuilder get _$this {
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
  void replace(HelpfulInformationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HelpfulInformationState;
  }

  @override
  void update(void Function(HelpfulInformationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HelpfulInformationState build() => _build();

  _$HelpfulInformationState _build() {
    final _$result = _$v ??
        new _$HelpfulInformationState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'HelpfulInformationState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'HelpfulInformationState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'HelpfulInformationState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
