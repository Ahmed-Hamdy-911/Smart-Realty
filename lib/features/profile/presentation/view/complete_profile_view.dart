import 'package:flutter/material.dart';
import 'package:smart_realty/features/home/presentation/view/home_view.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../../../core/theme/colors/colors.dart';
import '../../../../core/widgets/custom_material_button.dart';
import '../../../../core/widgets/custom_phone_number_widget.dart';
import '../../../../core/widgets/custom_text.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({super.key});

  @override
  State<CompleteProfileView> createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> roleList = [
      {"name": S.of(context).PropertyOwner, "icon": Icons.business},
      {"name": S.of(context).Tenant, "icon": Icons.person},
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0).copyWith(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: S.of(context).CompleteProfile,
                  customStyle: Theme.of(context).textTheme.headlineLarge,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1,
                    vertical: 10,
                  ),
                  child: CustomText(
                    textAlign: TextAlign.center,
                    text: S.of(context).PersonalData,
                    customStyle: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: S.of(context).PhoneNumber,
                        customStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      CustomPhoneField(phoneController: _phoneController),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      CustomText(
                        text: S.of(context).UserRole,
                        customStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            style: BorderStyle.solid,
                            width: 0.5,
                            color: AppColor.kMainColor.withOpacity(0.5),
                          ),
                        ),
                        child: DropdownButton<Map<String, dynamic>>(
                          underline: const SizedBox(),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          borderRadius: BorderRadius.circular(30),
                          dropdownColor: AppColor.kMainBGColor,
                          isExpanded: true,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          hint: CustomText(
                              text: S.of(context).SelectRole,
                              customStyle:
                                  Theme.of(context).textTheme.headlineSmall),
                          onChanged: (newValue) {},
                          items: roleList.map((role) {
                            return DropdownMenuItem(
                              value: role,
                              child: Row(
                                children: [
                                  Icon(role['icon'],
                                      color: AppColor.kMainColor),
                                  const SizedBox(width: 10),
                                  CustomText(
                                    text: role['name'],
                                    customStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontSize: 15,
                                        ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      CustomMaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // NavigationHelper.naviPushAndRemoveUntil(context,
                              // widgetName: const HomeView());
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeView(),
                                  ),
                                  (route) => false);
                            }
                          },
                          color: AppColor.kMainColor,
                          radius: 50,
                          widget: CustomText(
                            textColor: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            text: S.of(context).Continue,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
