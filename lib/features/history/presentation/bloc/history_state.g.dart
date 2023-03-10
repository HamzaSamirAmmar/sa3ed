// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HistoryState extends HistoryState {
  @override
  final BuiltList<Help> helps;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$HistoryState([void Function(HistoryStateBuilder)? updates]) =>
      (new HistoryStateBuilder()..update(updates))._build();

  _$HistoryState._(
      {required this.helps,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(helps, r'HistoryState', 'helps');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'HistoryState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'HistoryState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'HistoryState', 'message');
  }

  @override
  HistoryState rebuild(void Function(HistoryStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryStateBuilder toBuilder() => new HistoryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryState &&
        helps == other.helps &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, helps.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryState')
          ..add('helps', helps)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class HistoryStateBuilder
    implements Builder<HistoryState, HistoryStateBuilder> {
  _$HistoryState? _$v;

  ListBuilder<Help>? _helps;
  ListBuilder<Help> get helps => _$this._helps ??= new ListBuilder<Help>();
  set helps(ListBuilder<Help>? helps) => _$this._helps = helps;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HistoryStateBuilder();

  HistoryStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _helps = $v.helps.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryState;
  }

  @override
  void update(void Function(HistoryStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryState build() => _build();

  _$HistoryState _build() {
    _$HistoryState _$result;
    try {
      _$result = _$v ??
          new _$HistoryState._(
              helps: helps.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'HistoryState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'HistoryState', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'HistoryState', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'helps';
        helps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HistoryState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
