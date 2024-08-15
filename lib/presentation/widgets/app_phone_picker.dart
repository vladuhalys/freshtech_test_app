import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/countries.dart';

import '../../data/country_code/model/country_code_model.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';
import '../../theme/resources.dart';
import 'app_text_field.dart';
import 'gap.dart';

class AppPhonePicker extends StatefulWidget {
  const AppPhonePicker({
    super.key,
    required this.counties,
    required this.selectedCountry,
    required this.onCountrySelected, required this.onChangePhoneNumber, this.errorText, required this.showError,
  });
  final List<CountryCodeModel> counties;
  final CountryCodeModel selectedCountry;
  final Function(CountryCodeModel) onCountrySelected;
  final Function(String) onChangePhoneNumber;
  final String ? errorText;
  final bool showError;

  @override
  State<AppPhonePicker> createState() => _AppPhonePickerState();
}

class _AppPhonePickerState extends State<AppPhonePicker> {
  final phoneController = MaskedTextController(mask: '000-000-0000');

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Phone number", style: AppTextStyle.floatingLableStyle),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: AppColors.scaffoldColor,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return BottomSheet(onCountrySelected: widget.onCountrySelected);
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 2),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 88,
                              child: Text(
                                  widget.selectedCountry.getCountryCodeInfo(),
                                  style: AppTextStyle.textFieldInput),
                            ),
                            const Gap(w: 12),
                            SvgPicture.asset(
                              AppIcons.chevronDown,
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 120,
                  child: Divider(
                    thickness: 1,
                    color: AppColors.primaryHintColor,
                  ),
                ),
              ],
            ),
            const Gap(w: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: AppPrimaryTextField(
                  hintText: '___-___-____',
                  onChanged: (value) {
                    widget.onChangePhoneNumber(phoneController.text);
                  },
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
          ],
        ),
        if(widget.showError)
          Text(widget.errorText ?? '', style: AppTextStyle.errorText),
      ],
    );
  }
}

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key, required this.onCountrySelected});
  final Function(CountryCodeModel) onCountrySelected;

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  List quiriedCountries = countries.toList();

  void onSearch(String query) {
    setState(() {
      quiriedCountries = countries
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text("Search by country name", style: AppTextStyle.floatingLableStyle),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AppPrimaryTextField(
              onChanged: onSearch,
              suffixIcon: SvgPicture.asset(AppIcons.search),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: quiriedCountries.length,
              itemBuilder: (context, index) {
                Country country = quiriedCountries[index];
                return InkWell(
                  onTap: () {
                    widget.onCountrySelected(CountryCodeModel(
                      name: country.name,
                      code: country.code,
                      dial_code: country.dialCode,
                    ));
                    Navigator.of(context).pop();
                  },
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text(country.name, maxLines: 2, style: AppTextStyle.headingH3)),
                        Row(
                          children: [
                            Text(country.code, style: AppTextStyle.headingH3),
                            const Gap(w: 8),
                            Text('+${country.dialCode}', style: AppTextStyle.headingH3),
                          ],
                        ),
                      ],
                    ),
                    
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
