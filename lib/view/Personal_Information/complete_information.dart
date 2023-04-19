import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_final_progict/conestant/image.dart';
import 'package:my_final_progict/view/Personal_Information/states.dart';
import '../../widget/OpenCamera/Widget_Open_Camera.dart';
import '../Upload_Photo_Card.dart';
import '../../conestant/conset.dart';
import '../../widget/Container_Button_Color.dart';
import '../../widget/Radio_View.dart';
import '../Page_Start_Exam.dart';
import '../../widget/Text_From_Filed.dart';
import 'cubit.dart';

class CompleteInformationView extends StatefulWidget {
  const CompleteInformationView({
    Key? key,
    required this.userType,
  }) : super(key: key);

  final String userType;

  @override
  State<CompleteInformationView> createState() =>
      _CompleteInformationViewState();
}

String userGender = '';
final userGenders = ['Male', 'Female'];
String withDoctor = '';
final choose = ['Yes', 'No'];

class _CompleteInformationViewState extends State<CompleteInformationView> {
  String? name;
  String? address;
  String? headline;
  DateTime? date;
  final formKay = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final headlineController = TextEditingController();
  final birthDayController = TextEditingController();

  String? birthDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: BlocProvider(
        create: (context) => CompleteInfoCubit(),
        child: BlocConsumer<CompleteInfoCubit, CompleteInfoStates>(
            listener: (context, state) {
          if (state is SuccessCompleteInfoOnFireStoreState) {
            {
              widget.userType == "Doctor"
                  ? Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => UploadCardView()))
                  : Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PageStartExamView()),
                    );
            }
          }
        }, builder: (context, state) {
          return ListView(
            children: [
              Stack(
                children: [
                  Image.asset(
                    AppImage.background,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Form(
                    key: formKay,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 51),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Let’s Complele \n Information',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            OpenCameraView(),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormFieldView(
                              controller: nameController,
                              number: 1,
                              text: 'Full Name',
                              keyboardType: TextInputType.text,
                              onchange: (String value) {
                                name =value;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Full Name can be not empty';
                                } else
                                  return null;
                              },
                              onSaved: (val) {},
                            ),
                            TextFormFieldView(
                              controller: birthDayController,
                              text: 'Data of Birth',
                              onchange: (dynamic value) {
                                birthDay = value ;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Date can be not empty';
                                } else
                                  return null;
                              },
                              onSaved: (val) {},
                              onTap: () async {
                                DateTime? pickddate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101));
                                if (pickddate != null) {
                                  setState(() {
                                    birthDay = DateFormat('yyyy-MM-dd')
                                        .format(pickddate);
                                  });
                                }
                              },
                            ),
                            Container(
                              height: 85,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: TextFiled,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 120, top: 16),
                                    child: Text(
                                      'Choose your Gender',
                                      style: TextStyle(
                                          color: GrayText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ...userGenders.map((e) {
                                        return CustomRadio(
                                          title: e,
                                          onChange: (v) =>
                                              setState(() => userGender = e),
                                          value: e,
                                          groupValue: userGender,
                                        );
                                      }),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextFormFieldView(
                              controller: addressController,
                              number: 1,
                              text: 'Address',
                              keyboardType: TextInputType.text,
                              onchange: (String value) {
                                address =value;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'address can be not empty';
                                } else
                                  return null;
                              },
                              onSaved: (val) {},
                            ),
                            widget.userType == "Doctor"
                                ? TextFormFieldView(
                                    controller: headlineController,
                                    number: 3,
                                    text: 'Headline',
                                    keyboardType: TextInputType.text,
                                    onchange: (String value) {
                                      headline =value;
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Headline can be not empty';
                                      } else
                                        return null;
                                    },
                                    onSaved: (val) {},
                                  )
                                : Container(
                                    height: 85,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: TextFiled,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 1, top: 16),
                                          child: Text(
                                            'Are you following up with a doctor?',
                                            style: TextStyle(
                                                color: GrayText,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ...choose.map((e) {
                                              return CustomRadio(
                                                title: e,
                                                onChange: (v) => setState(
                                                    () => withDoctor = e),
                                                value: e,
                                                groupValue: withDoctor,
                                              );
                                            }),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                            SizedBox(
                              height: 42,
                            ),
                            ContainerColorView(
                              data: 'Continue',
                              onTap: () async {
                                if (formKay.currentState!.validate()) {
                                  String ImgUrl = await UploadImageToStorage();

                                  BlocProvider.of<CompleteInfoCubit>(context)
                                      .sendUserDataToFireStore(
                                    name: nameController.text,
                                    address: addressController.text,
                                    headLine: headlineController.text,
                                    uRl: ImgUrl,
                                    userGender: userGender,
                                    withDoctor: withDoctor,
                                    userType: widget.userType,
                                    birthDay: birthDayController.text,
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
