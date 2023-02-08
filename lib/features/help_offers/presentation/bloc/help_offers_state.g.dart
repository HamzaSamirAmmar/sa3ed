// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_offers_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HelpOffersState extends HelpOffersState {
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$HelpOffersState([void Function(HelpOffersStateBuilder)? updates]) =>
      (new HelpOffersStateBuilder()..update(updates))._build();

  _$HelpOffersState._(
      {required this.isLoading, required this.error, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'HelpOffersState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'HelpOffersState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'HelpOffersState', 'message');
  }

  @override
  HelpOffersState rebuild(void Function(HelpOffersStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HelpOffersStateBuilder toBuilder() =>
      new HelpOffersStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HelpOffersState &&
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
    return (newBuiltValueToStringHelper(r'HelpOffersState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class HelpOffersStateBuilder
    implements Builder<HelpOffersState, HelpOffersStateBuilder> {
  _$HelpOffersState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HelpOffersStateBuilder();

  HelpOffersStateBuilder get _$this {
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
  void replace(HelpOffersState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HelpOffersState;
  }

  @override
  void update(void Function(HelpOffersStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HelpOffersState build() => _build();

  _$HelpOffersState _build() {
    final _$result = _$v ??
        new _$HelpOffersState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'HelpOffersState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'HelpOffersState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'HelpOffersState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
