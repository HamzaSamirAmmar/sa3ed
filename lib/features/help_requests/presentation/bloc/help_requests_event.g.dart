// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_requests_event.dart';

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

class _$GetAllHelpRequests extends GetAllHelpRequests {
  @override
  final int? governorateId;
  @override
  final int? cityId;
  @override
  final int? helpType;
  @override
  final int page;

  factory _$GetAllHelpRequests(
          [void Function(GetAllHelpRequestsBuilder)? updates]) =>
      (new GetAllHelpRequestsBuilder()..update(updates))._build();

  _$GetAllHelpRequests._(
      {this.governorateId, this.cityId, this.helpType, required this.page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(page, r'GetAllHelpRequests', 'page');
  }

  @override
  GetAllHelpRequests rebuild(
          void Function(GetAllHelpRequestsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllHelpRequestsBuilder toBuilder() =>
      new GetAllHelpRequestsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllHelpRequests &&
        governorateId == other.governorateId &&
        cityId == other.cityId &&
        helpType == other.helpType &&
        page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, governorateId.hashCode);
    _$hash = $jc(_$hash, cityId.hashCode);
    _$hash = $jc(_$hash, helpType.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetAllHelpRequests')
          ..add('governorateId', governorateId)
          ..add('cityId', cityId)
          ..add('helpType', helpType)
          ..add('page', page))
        .toString();
  }
}

class GetAllHelpRequestsBuilder
    implements Builder<GetAllHelpRequests, GetAllHelpRequestsBuilder> {
  _$GetAllHelpRequests? _$v;

  int? _governorateId;
  int? get governorateId => _$this._governorateId;
  set governorateId(int? governorateId) =>
      _$this._governorateId = governorateId;

  int? _cityId;
  int? get cityId => _$this._cityId;
  set cityId(int? cityId) => _$this._cityId = cityId;

  int? _helpType;
  int? get helpType => _$this._helpType;
  set helpType(int? helpType) => _$this._helpType = helpType;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GetAllHelpRequestsBuilder();

  GetAllHelpRequestsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _governorateId = $v.governorateId;
      _cityId = $v.cityId;
      _helpType = $v.helpType;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAllHelpRequests other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllHelpRequests;
  }

  @override
  void update(void Function(GetAllHelpRequestsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllHelpRequests build() => _build();

  _$GetAllHelpRequests _build() {
    final _$result = _$v ??
        new _$GetAllHelpRequests._(
            governorateId: governorateId,
            cityId: cityId,
            helpType: helpType,
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'GetAllHelpRequests', 'page'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
