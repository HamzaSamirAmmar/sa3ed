import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sa3ed/core/util/generate_screen.dart';

import '../../../../core/util/constants.dart';
import '../../../../core/widgets/custom_drop_down_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/key_value_row.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../injection.dart';
import '../../../home/domain/entities/city.dart';
import '../../../home/domain/entities/governorate.dart';
import '../../../home/domain/entities/help_type.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../home/presentation/bloc/home_state.dart';
import '../../data/models/help_form_model.dart';
import '../bloc/form_bloc.dart';
import '../bloc/form_state.dart' as bloc_form_state;

class FormPage extends StatefulWidget {
  final FromPageArguments arguments;

  const FormPage({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _homeBloc = sl<HomeBloc>();

  final _bloc = sl<FormBloc>();

  final _formKey = GlobalKey<FormState>();

  HelpType? _helpType;

  Governorate? _governorate;

  City? _city;

  bool _isHelpTypeValid = true;

  bool _isGovernorateValid = true;

  final TextEditingController _location = TextEditingController();

  final TextEditingController _name = TextEditingController();

  final TextEditingController _phoneNumber = TextEditingController();

  final TextEditingController _notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<FormBloc, bloc_form_state.FormState>(
      bloc: _bloc,
      listener: (context, state) {
        if (state.allSuccess) {
          _bloc.reInitState(
            onStateReInitialized: () {
              widget.arguments.onSuccess();
              Navigator.of(context).pop();
              message(
                context: context,
                message: state.message,
                isError: state.error,
                bloc: _bloc,
              );
            },
          );
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: _homeBloc,
        builder: (context, homeState) {
          return BlocBuilder<FormBloc, bloc_form_state.FormState>(
            bloc: _bloc,
            builder: (context, blocFromState) {
              message(
                context: context,
                message: blocFromState.message,
                isError: blocFromState.error,
                bloc: _bloc,
              );
              return GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: Scaffold(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  appBar: AppBar(
                    title: Text(
                        widget.arguments.isRequest ? "طلب مساعدة" : "عرض تبرع"),
                    centerTitle: true,
                  ),
                  body: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20.h),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiary
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.w,
                                      right: 20.w,
                                      top: 20.h,
                                    ),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "ملاحظات هامة",
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                        SizedBox(height: 10.h),
                                        KeyTitleValueRow(
                                          keyTitle: "-",
                                          value: widget.arguments.isRequest
                                              ? "أنت الآن على وشك إضافة طلب مساعدة، فرّج الله همك."
                                              : "أنت الآن على وشك إضافة عرض تبرع، أخلف الله عليك وجزاك الله خيراً.",
                                        ),
                                        KeyTitleValueRow(
                                          keyTitle: "-",
                                          value: widget.arguments.isRequest
                                              ? "أنتم من يساهم بنجاح هذا التطبيق، لذلك نرجوا منك الإلتزام بحذف طلب المساعدة عندما يتم تلبيتها، وذلك من أجل بقاء البيانات محدثة بشكل دائم، ولكي لا تتلقى اتصالات تعرض عليك المساعدة بعد أن تصبح لست بحاجة لها."
                                              : "أنتم من يساهم بنجاح هذا التطبيق، لذلك نرجوا منك الإلتزام بحذف عرض التبرع عندما تريد إنهاء تقديمه، وذلك من أجل بقاء البيانات محدثة بشكل دائم، ولكي لا تتلقى اتصالات أو طلبات بعد أن تكون قد انتيهت من تقديم هذا التبرع.",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                CustomDropDownButton<HelpType>(
                                  isValid: _isHelpTypeValid,
                                  label: widget.arguments.isRequest
                                      ? "ما هو نوع المساعدة التي تحتاجها؟"
                                      : "ما هو نوع التبرع الذي تستطيع تقديمه؟",
                                  errorText: widget.arguments.isRequest
                                      ? "نوع المساعدة مطلوب"
                                      : "نوع التبرع مطلوب",
                                  selectedItem: _helpType,
                                  defaultValue: widget.arguments.isRequest
                                      ? "الرجاء اختيار نوع المساعدة"
                                      : "الرجاء اختيار نوع التبرع",
                                  items: homeState.helpTypes.toList(),
                                  onItemSelected: (HelpType type) {
                                    if (!_isHelpTypeValid) {
                                      setState(() {
                                        _helpType = type;
                                        _isHelpTypeValid = true;
                                      });
                                    } else if (type != _helpType) {
                                      setState(() {
                                        _helpType = type;
                                      });
                                    }
                                  },
                                ),
                                CustomDropDownButton<Governorate>(
                                  isValid: _isGovernorateValid,
                                  label: "ما هي المحافظة؟",
                                  errorText: "المحافظة مطلوبة",
                                  selectedItem: _governorate,
                                  defaultValue: "الرجاء اختيار المحافظة",
                                  items: homeState.governorates.toList(),
                                  onItemSelected: (Governorate type) {
                                    if (!_isGovernorateValid) {
                                      setState(() {
                                        _governorate = type;
                                        _isGovernorateValid = true;
                                      });
                                    }
                                    if (type != _governorate) {
                                      setState(() {
                                        _governorate = type;
                                        _city = null;
                                      });
                                    }
                                  },
                                ),
                                if (_governorate != null)
                                  CustomDropDownButton<City>(
                                    label: "ما هي المنطقة الأقرب لك؟",
                                    selectedItem: _city,
                                    defaultValue: "الرجاء اختيار المنطقة",
                                    items: homeState.governorates
                                        .firstWhere((governorate) =>
                                            governorate.id == _governorate!.id)
                                        .cities,
                                    onItemSelected: (City type) {
                                      if (type != _city) {
                                        setState(() {
                                          _city = type;
                                        });
                                      }
                                    },
                                  ),
                                CustomTextField(
                                  formKey: _formKey,
                                  controller: _location,
                                  label: "ما هو العنوان؟",
                                  hint: "أدخل عنوانك بالتفصيل",
                                  maxLines: 3,
                                  extraPadding: false,
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'الرجاء إدخال العنوان';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                CustomTextField(
                                  formKey: _formKey,
                                  controller: _name,
                                  label: "ما هو اسمك؟",
                                  hint: "الاسم",
                                  validator: (text) {
                                    if (text == null || text.isEmpty) {
                                      return 'الرجاء إدخال الاسم';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                CustomTextField(
                                  formKey: _formKey,
                                  controller: _phoneNumber,
                                  // inputFormatters: [
                                  //   FilteringTextInputFormatter.allow(RegExp(r'(^(?:[+0]9)?\d{10,12}$)')),
                                  // ],
                                  label: "ما هو رقم التواصل؟",
                                  hint: "أدخل رقماً للتواصل معك",
                                  textInputType: TextInputType.phone,
                                  validator: (text) {
                                    if (text == null ||
                                        text.isEmpty ||
                                        text.replaceAll(" ", "").isEmpty) {
                                      return 'الرجاء إدخال رقم للتواصل';
                                    } else if (!RegExp(r'(^(?:[+])?\d{7,15}$)')
                                            .hasMatch(text) &&
                                        !RegExp(r'(^(?:[+])?[\u0621-\u064A\u0660-\u0669]{7,15}$)')
                                            .hasMatch(text)) {
                                      return "الرجاء إدخال رقم صحيح";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                CustomTextField(
                                  formKey: _formKey,
                                  controller: _notes,
                                  label: "هل لديك أية ملاحظات أخرى؟",
                                  hint: widget.arguments.isRequest
                                      ? "يمكنك هنا وصف المساعدة بشكل أكثر (مثال: عدد الأفراد، الكمية المطلوبة، ...)"
                                      : "يمكنك هنا وصف التبرع بشكل أكثر (مثال: حجم التبرع، الوقت الذي يمكن تأمينه بها، ...)",
                                  maxLines: 5,
                                  validator: (text) {
                                    return null;
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.h,
                                  ),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                      onPressed: () {
                                        if (_governorate == null) {
                                          setState(() {
                                            _isGovernorateValid = false;
                                          });
                                        }
                                        if (_helpType == null) {
                                          setState(() {
                                            _isHelpTypeValid = false;
                                          });
                                        }
                                        if ((_formKey.currentState
                                                    ?.validate() ??
                                                false) &&
                                            _isHelpTypeValid &&
                                            _isGovernorateValid) {
                                          _bloc.addSubmitHelpFormEvent(
                                            form: HelpFormModel(
                                              helpType: _helpType!.id,
                                              cityId: _governorate!.id,
                                              areaId: (_city == null)
                                                  ? null
                                                  : _city!.id,
                                              locationDetails: _location.text,
                                              name: _name.text,
                                              phone: _phoneNumber.text,
                                              notes: _notes.text,
                                              movable:
                                                  false, // TODO: check movable
                                            ),
                                            isOffer:
                                                !widget.arguments.isRequest,
                                          );
                                        }
                                      },
                                      child: const Text("إرسال"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (blocFromState.isLoading) const Loader(),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
