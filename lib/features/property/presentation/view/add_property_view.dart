import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smart_realty/core/components/custom_back_icon.dart';
import 'package:smart_realty/core/constants/constants.dart';
import 'package:smart_realty/core/widgets/custom_material_button.dart';
import 'package:smart_realty/core/widgets/custom_phone_number_widget.dart';
import 'package:smart_realty/core/widgets/custom_text.dart';
import 'package:smart_realty/core/widgets/custom_text_form.dart';
import 'package:smart_realty/generated/l10n.dart';
import '../../../../core/data/models/country_model.dart';
import '../../../../core/theme/colors/colors.dart';
import '../../../../core/widgets/custom_outlined_button.dart';

class AddPropertyView extends StatefulWidget {
  const AddPropertyView({super.key});

  @override
  State<AddPropertyView> createState() => _AddPropertyViewState();
}

class _AddPropertyViewState extends State<AddPropertyView> {
  int _currentStep = 0;
  final _formKey = GlobalKey<FormState>();

  void _nextStep() {
    //&& _formKey.currentState!.validate()
    if (_currentStep < 2) {
      setState(() {
        _currentStep++;
      });
    }
  }

  void _prevStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double progress = (_currentStep + 1) / 3;
    String progressText =
        '${S.of(context).Step} ${_currentStep + 1} ${S.of(context).Of} 3';

    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackIcon(),
        toolbarHeight: kToolbarHeight + 10,
        centerTitle: true,
        title: CustomText(
          text: S.of(context).AddProperty,
          textColor: AppColor.KBlackColor,
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinearPercentIndicator(
                  lineHeight: 10,
                  percent: progress,
                  isRTL: Intl.getCurrentLocale() == "ar",
                  backgroundColor: Colors.grey.shade300,
                  progressColor: AppColor.kMainColor,
                  barRadius: const Radius.circular(10),
                ),
                const SizedBox(height: 8),
                CustomText(
                  text: progressText,
                  textAlign: TextAlign.start,
                  textColor: AppColor.KMainTextColor,
                  fontSize: 14,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Step Content
                _buildStepContent(_currentStep),

                // Navigation Buttons
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (_currentStep > 0)
                        CustomOutlinedButton(
                          onPressed: _prevStep,
                          widget: SizedBox(
                            width: 80,
                            height: 30,
                            child: Center(
                              child: CustomText(
                                text: S.of(context).Previous,
                                textColor: AppColor.KBlackColor,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      if (_currentStep < 2)
                        Center(
                          child: CustomOutlinedButton(
                            onPressed: _nextStep,
                            widget: SizedBox(
                              width: 80,
                              height: 30,
                              child: Center(
                                child: CustomText(
                                  text: S.of(context).Next,
                                  textColor: AppColor.KBlackColor,
                                ),
                              ),
                            ),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      if (_currentStep == 2)
                        CustomMaterialButton(
                          minWidth: MediaQuery.of(context).size.width * 0.6,
                          widget: CustomText(
                            text: S.of(context).Submit,
                            textColor: AppColor.KWhiteColor,
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                        ),
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

  // Builds the content for each step
  Widget _buildStepContent(int step) {
    switch (step) {
      case 0:
        return _buildStep1();
      case 1:
        return _buildStep2();
      case 2:
        return _buildStep3();
      default:
        return Container(); // Fallback
    }
  }

  // Step 1: Basic Details
  Widget _buildStep1() {
    return const Column(
      children: [
        SellRentSwitcher(),
        UserRole(),
        DottedDividerHorizontal(),
        SelectCategory(),
      ],
    );
  }

  // Step 2: Property Details
  Widget _buildStep2() {
    return const Column(
      children: [
        PropertyFormInput(),
        DottedDividerHorizontal(),
        PriceAndIsNegotiableWidget(),
        DottedDividerHorizontal(),
      ],
    );
  }

  // Step 3: Additional Details
  Widget _buildStep3() {
    return Column(
      children: [
        const CustomUploadImage(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
      ],
    );
  }
}

class PriceAndIsNegotiableWidget extends StatefulWidget {
  const PriceAndIsNegotiableWidget({super.key});

  @override
  State<PriceAndIsNegotiableWidget> createState() =>
      _PriceAndIsNegotiableWidgetState();
}

class _PriceAndIsNegotiableWidgetState
    extends State<PriceAndIsNegotiableWidget> {
  final priceController = TextEditingController();
  bool isNegotiable = false;
  String _selectedCurrency = CountryModel.countriesList[0].currencyCode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: S.of(context).Price,
                  textColor: AppColor.KBlackColor,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Expanded(
                  child: CustomTextFormField(
                    controller: priceController,
                    filled: true,
                    hintText: '0.0',

                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*'))
                    ],
                    suffixIcon: DropdownButton<String>(
                      value: _selectedCurrency,
                      underline: const SizedBox(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedCurrency = newValue!;
                        });
                      },
                      items: CountryModel.countriesList
                          .map<DropdownMenuItem<String>>((country) {
                        return DropdownMenuItem<String>(
                          value: country.currencyCode,
                          child: CustomText(
                            text: country.currencyCode,
                            fontSize: 14,
                            textColor: AppColor.KMainTextColor,
                          ),
                        );
                      }).toList(),
                    ),
                    // onChanged: formatPriceInput,
                    fillColor: AppColor.KWhiteColor,
                    customBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 0,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SwitchListTile(
            value: isNegotiable,
            title: CustomText(
              text: S.of(context).IsItNegotiable,
              fontSize: 15,
              textColor: AppColor.KBlackColor,
            ),
            subtitle: CustomText(
              text: isNegotiable ? S.of(context).yes : S.of(context).no,
              customStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: 14,
                  ),
            ),
            onChanged: (value) {
              setState(() {
                isNegotiable = value;
              });
            },
          )
        ],
      ),
    );
  }
}

class CustomUploadImage extends StatelessWidget {
  const CustomUploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DottedBorder(
          dashPattern: const [8, 5, 4, 5],
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          color: AppColor.KMainTextColor,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: AppColor.KWhiteColor,
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: S.of(context).UploadImage,
                  textColor: AppColor.KBlackColor,
                ),
                const Icon(IconlyLight.paper_upload),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              splashColor: AppColor.kMainColor.withOpacity(0.2),
              highlightColor: AppColor.kMainColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}

class PropertyFormInput extends StatefulWidget {
  const PropertyFormInput({super.key});

  @override
  State<PropertyFormInput> createState() => _PropertyFormInputState();
}

class _PropertyFormInputState extends State<PropertyFormInput> {
  final propertyNameController = TextEditingController();
  final propertyAddressController = TextEditingController();
  final propertyDescriptionController = TextEditingController();
  final phoneController = TextEditingController();
  final bool filled = true;
  final Color filledColor = AppColor.KWhiteColor;
  final InputBorder customBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      width: 0,
      color: Colors.transparent,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final customHintStyle =
        Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14);
    return Column(
      children: [
        // property name
        CustomTextFormField(
          fillColor: filledColor,
          filled: filled,
          customBorder: customBorder,
          hintText: S.of(context).PropertyName,
          customHintStyle: customHintStyle,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        // address
        CustomTextFormField(
          fillColor: filledColor,
          filled: filled,
          customBorder: customBorder,
          hintText: S.of(context).Address,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.location),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        // description
        CustomTextFormField(
          fillColor: filledColor,
          filled: filled,
          customBorder: customBorder,
          customHintStyle: customHintStyle,
          minLines: 2,
          maxLines: 4,
          maxLength: 300,
          hintText:
              "${S.of(context).Description}  (${S.of(context).PreferablyFilled})",
          validator: (v) {
            return null;
          },
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        // number
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 40),
              child: CustomPhoneField(
                  fillColor: filledColor,
                  filled: filled,
                  customBorder: customBorder,
                  hintText: S.of(context).toContact,
                  phoneController: phoneController),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  CustomText(
                    text: S.of(context).UseMyPersonalNumber,
                    customStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class UserRole extends StatefulWidget {
  const UserRole({super.key});

  @override
  State<UserRole> createState() => _UserRoleState();
}

class _UserRoleState extends State<UserRole> {
  @override
  Widget build(BuildContext context) {
    List<String> textUserRole = [
      S.of(context).Owner,
      S.of(context).Manager,
      S.of(context).Guard,
      S.of(context).Broker,
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: S.of(context).youAreA,
            textColor: AppColor.KBlackColor,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: AppConstant.selectPropertyUserRole.length,
              separatorBuilder: (context, index) => SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              itemBuilder: (context, index) {
                String role = AppConstant.selectPropertyUserRole[index];
                return Row(
                  children: [
                    Radio<String>(
                      value: role,
                      fillColor:
                          const WidgetStatePropertyAll(AppColor.kMainColor),
                      groupValue: AppConstant.selectedPropertyUser,
                      onChanged: (value) {
                        setState(() {
                          AppConstant.selectedPropertyUser = value!;
                        });
                      },
                    ),
                    CustomText(
                      text: textUserRole[index],
                      customStyle: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color:
                                  AppConstant.selectPropertyUserRole[index] ==
                                          AppConstant.selectedPropertyUser
                                      ? AppColor.kMainColor
                                      : AppColor.KBlackColor,
                              fontSize:
                                  AppConstant.selectPropertyUserRole[index] ==
                                          AppConstant.selectedPropertyUser
                                      ? 16
                                      : 14),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DottedDividerHorizontal extends StatelessWidget {
  const DottedDividerHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        DottedDashedLine(
          axis: Axis.horizontal,
          height: MediaQuery.of(context).size.height * 0.02,
          dashSpace: 8,
          width: MediaQuery.of(context).size.width,
          dashColor: AppColor.KGreyColor,
        ),
      ],
    );
  }
}

class SellRentSwitcher extends StatefulWidget {
  const SellRentSwitcher({super.key});

  @override
  State<SellRentSwitcher> createState() => _SellRentSwitcherState();
}

class _SellRentSwitcherState extends State<SellRentSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: S.of(context).IWantTo,
          textColor: AppColor.KBlackColor,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Row(
          children: [
            Expanded(
              child: ChoiceSwitchWidget(
                nameOfChoice: S.of(context).Sell,
                isSelected: AppConstant.selectedOption == "Sell",
                onTap: () {
                  setState(() {
                    AppConstant.selectedOption = "Sell";
                  });
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ChoiceSwitchWidget(
                nameOfChoice: S.of(context).Rent,
                isSelected: AppConstant.selectedOption == "Rent",
                onTap: () {
                  setState(() {
                    AppConstant.selectedOption = "Rent";
                  });
                },
              ),
            ),
          ],
        ),
        const DottedDividerHorizontal(),
      ],
    );
  }
}

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  String selectedPropertyCategory = AppConstant.selectedPropertyCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: S.of(context).SelectCategory,
          textColor: AppColor.KBlackColor,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        GridViewForCategory(children: [
          ChoiceSwitchWidget(
            nameOfChoice: S.of(context).Land,
            icon: Icons.terrain,
            isSelected: selectedPropertyCategory == "Land",
            onTap: () {
              setState(() {
                selectedPropertyCategory = "Land";
              });
            },
          ),
          ChoiceSwitchWidget(
            nameOfChoice: S.of(context).Apartment,
            icon: Icons.apartment,
            isSelected: selectedPropertyCategory == "Apartment",
            onTap: () {
              setState(() {
                selectedPropertyCategory = "Apartment";
              });
            },
          ),
          ChoiceSwitchWidget(
            nameOfChoice: S.of(context).Building,
            icon: Icons.business,
            isSelected: selectedPropertyCategory == "Building",
            onTap: () {
              setState(() {
                selectedPropertyCategory = "Building";
              });
            },
          ),
          ChoiceSwitchWidget(
            nameOfChoice: S.of(context).House,
            icon: Icons.home,
            isSelected: selectedPropertyCategory == "House",
            onTap: () {
              setState(() {
                selectedPropertyCategory = "House";
              });
            },
          ),
          ChoiceSwitchWidget(
            nameOfChoice: S.of(context).Room,
            icon: Icons.meeting_room,
            isSelected: selectedPropertyCategory == "Room",
            onTap: () {
              setState(() {
                selectedPropertyCategory = "Room";
              });
            },
          ),
        ]),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        CategorySpecificDetails(
          selectedPropertyCategory: selectedPropertyCategory,
        ),
        const DottedDividerHorizontal(),
      ],
    );
  }
}

class CategorySpecificDetails extends StatefulWidget {
  const CategorySpecificDetails(
      {super.key, required this.selectedPropertyCategory});
  final String selectedPropertyCategory;

  @override
  State<CategorySpecificDetails> createState() =>
      _CategorySpecificDetailsState();
}

class _CategorySpecificDetailsState extends State<CategorySpecificDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: S.of(context).categoryDetails,
          customStyle: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        _buildCategorySpecificDetails(
          context,
          landController: TextEditingController(),
          apartmentController: TextEditingController(),
          buildingController: TextEditingController(),
          houseController: TextEditingController(),
          roomController: TextEditingController(),
        )
      ],
    );
  }

  Widget _buildCategorySpecificDetails(
    context, {
    required TextEditingController landController,
    required TextEditingController apartmentController,
    required TextEditingController buildingController,
    required TextEditingController houseController,
    required TextEditingController roomController,
  }) {
    switch (widget.selectedPropertyCategory) {
      case "Apartment":
        return apartmentDetails(context, apartmentController: landController);
      case "Building":
        return buildingDetails(context, buildingController: buildingController);
      case "House":
        return houseDetails(context, houseController: landController);
      case "Room":
        return roomDetails(context, roomController: roomController);
      default:
        return landDetails(context, landController: landController);
    }
  }

  Widget landDetails(context, {required TextEditingController landController}) {
    return categoryDetails(context,
        componentName: S.of(context).Area,
        componentNameController: landController);
  }

  Widget apartmentDetails(context,
      {required TextEditingController apartmentController}) {
    return GridViewForCategory(
      children: [
        categoryDetails(context,
            componentName: S.of(context).Area,
            componentNameController: apartmentController),
        categoryDetails(context,
            componentName: S.of(context).Bedroom,
            componentNameController: apartmentController),
        categoryDetails(context,
            componentName: S.of(context).Bathroom,
            componentNameController: apartmentController),
        categoryDetails(context,
            componentName: S.of(context).Kitchen,
            componentNameController: apartmentController),
      ],
    );
  }

  Widget buildingDetails(context,
      {required TextEditingController buildingController}) {
    return GridViewForCategory(
      children: [
        categoryDetails(context,
            componentName: S.of(context).Area,
            componentNameController: buildingController),
        categoryDetails(context,
            componentName: S.of(context).Floor,
            componentNameController: buildingController),
        categoryDetails(context,
            componentName: S.of(context).Apartment,
            componentNameController: buildingController),
      ],
    );
  }

  Widget houseDetails(context,
      {required TextEditingController houseController}) {
    return GridViewForCategory(
      children: [
        categoryDetails(context,
            componentName: S.of(context).Area,
            componentNameController: houseController),
        categoryDetails(context,
            componentName: S.of(context).Floor,
            componentNameController: houseController),
        categoryDetails(context,
            componentName: S.of(context).Bedroom,
            componentNameController: houseController),
        categoryDetails(context,
            componentName: S.of(context).Bathroom,
            componentNameController: houseController),
        categoryDetails(context,
            componentName: S.of(context).Kitchen,
            componentNameController: houseController),
      ],
    );
  }

  Widget roomDetails(context, {required TextEditingController roomController}) {
    return GridViewForCategory(children: [
      categoryDetails(context,
          componentName: S.of(context).Area,
          componentNameController: roomController),
      categoryDetails(context,
          componentName: S.of(context).Bed,
          componentNameController: roomController)
    ]);
  }

  Widget categoryDetails(
    context, {
    required String componentName,
    required TextEditingController componentNameController,
  }) {
    bool filled = true;
    Color filledColor = AppColor.KWhiteColor;
    InputBorder customBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        width: 0,
        color: Colors.transparent,
      ),
    );
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.37,
      child: CustomTextFormField(
        controller: componentNameController,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        labelText: componentName,
        labelStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: 13,
            ),
        fillColor: filledColor,
        filled: filled,
        customBorder: customBorder,
        enabledBorder: customBorder,
      ),
    );
  }
}

class GridViewForCategory extends StatelessWidget {
  const GridViewForCategory({
    super.key,
    required this.children,
  });
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: (MediaQuery.of(context).size.width / 150).toInt(),
      childAspectRatio: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: children,
    );
  }
}

class ChoiceSwitchWidget extends StatelessWidget {
  final bool isSelected;
  final String nameOfChoice;
  final VoidCallback onTap;
  final IconData? icon;
  const ChoiceSwitchWidget({
    super.key,
    required this.isSelected,
    required this.nameOfChoice,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColor.KWhiteColor
              : AppColor.KGreyColor.withOpacity(
                  0.2,
                ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? AppColor.kMainColor : Colors.transparent,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: isSelected ? AppColor.kMainColor : AppColor.KBlackColor,
              ),
            CustomText(
              text: nameOfChoice,
              customStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color:
                        isSelected ? AppColor.kMainColor : AppColor.KBlackColor,
                  ),
              textColor:
                  isSelected ? AppColor.kMainColor : AppColor.KBlackColor,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Radio<bool>(
              value: true,
              groupValue: isSelected,
              fillColor: const WidgetStatePropertyAll(AppColor.kMainColor),
              onChanged: (value) => onTap(),
            ),
          ],
        ),
      ),
    );
  }
}
