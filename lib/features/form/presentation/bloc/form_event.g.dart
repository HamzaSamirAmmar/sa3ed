// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_event.dart';

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

class _$SubmitHelpForm extends SubmitHelpForm {
  @override
  final HelpFormModel form;
  @override
  final bool isOffer;

  factory _$SubmitHelpForm([void Function(SubmitHelpFormBuilder)? updates]) =>
      (new SubmitHelpFormBuilder()..update(updates))._build();

  _$SubmitHelpForm._({required this.form, required this.isOffer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(form, r'SubmitHelpForm', 'form');
    BuiltValueNullFieldError.checkNotNull(
        isOffer, r'SubmitHelpForm', 'isOffer');
  }

  @override
  SubmitHelpForm rebuild(void Function(SubmitHelpFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitHelpFormBuilder toBuilder() =>
      new SubmitHelpFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitHelpForm &&
        form == other.form &&
        isOffer == other.isOffer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, form.hashCode);
    _$hash = $jc(_$hash, isOffer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmitHelpForm')
          ..add('form', form)
          ..add('isOffer', isOffer))
        .toString();
  }
}

class SubmitHelpFormBuilder
    implements Builder<SubmitHelpForm, SubmitHelpFormBuilder> {
  _$SubmitHelpForm? _$v;

  HelpFormModel? _form;
  HelpFormModel? get form => _$this._form;
  set form(HelpFormModel? form) => _$this._form = form;

  bool? _isOffer;
  bool? get isOffer => _$this._isOffer;
  set isOffer(bool? isOffer) => _$this._isOffer = isOffer;

  SubmitHelpFormBuilder();

  SubmitHelpFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _form = $v.form;
      _isOffer = $v.isOffer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitHelpForm other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubmitHelpForm;
  }

  @override
  void update(void Function(SubmitHelpFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitHelpForm build() => _build();

  _$SubmitHelpForm _build() {
    final _$result = _$v ??
        new _$SubmitHelpForm._(
            form: BuiltValueNullFieldError.checkNotNull(
                form, r'SubmitHelpForm', 'form'),
            isOffer: BuiltValueNullFieldError.checkNotNull(
                isOffer, r'SubmitHelpForm', 'isOffer'));
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
