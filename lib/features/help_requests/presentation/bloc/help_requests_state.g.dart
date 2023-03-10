// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_requests_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HelpRequestsState extends HelpRequestsState {
  @override
  final PaginationStateData<SummaryHelp> helpRequests;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$HelpRequestsState(
          [void Function(HelpRequestsStateBuilder)? updates]) =>
      (new HelpRequestsStateBuilder()..update(updates))._build();

  _$HelpRequestsState._(
      {required this.helpRequests,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        helpRequests, r'HelpRequestsState', 'helpRequests');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'HelpRequestsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'HelpRequestsState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'HelpRequestsState', 'message');
  }

  @override
  HelpRequestsState rebuild(void Function(HelpRequestsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HelpRequestsStateBuilder toBuilder() =>
      new HelpRequestsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HelpRequestsState &&
        helpRequests == other.helpRequests &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, helpRequests.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HelpRequestsState')
          ..add('helpRequests', helpRequests)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class HelpRequestsStateBuilder
    implements Builder<HelpRequestsState, HelpRequestsStateBuilder> {
  _$HelpRequestsState? _$v;

  PaginationStateDataBuilder<SummaryHelp>? _helpRequests;
  PaginationStateDataBuilder<SummaryHelp> get helpRequests =>
      _$this._helpRequests ??= new PaginationStateDataBuilder<SummaryHelp>();
  set helpRequests(PaginationStateDataBuilder<SummaryHelp>? helpRequests) =>
      _$this._helpRequests = helpRequests;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HelpRequestsStateBuilder();

  HelpRequestsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _helpRequests = $v.helpRequests.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HelpRequestsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HelpRequestsState;
  }

  @override
  void update(void Function(HelpRequestsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HelpRequestsState build() => _build();

  _$HelpRequestsState _build() {
    _$HelpRequestsState _$result;
    try {
      _$result = _$v ??
          new _$HelpRequestsState._(
              helpRequests: helpRequests.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'HelpRequestsState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'HelpRequestsState', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'HelpRequestsState', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'helpRequests';
        helpRequests.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HelpRequestsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
