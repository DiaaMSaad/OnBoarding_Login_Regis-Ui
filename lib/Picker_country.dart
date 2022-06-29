import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

class PickerCountry extends StatefulWidget {
  const PickerCountry({Key? key}) : super(key: key);

  @override
  State<PickerCountry> createState() => _PickerCountryState();
}

class _PickerCountryState extends State<PickerCountry> {
  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return CountryPickerDropdown(
      initialValue: 'AR',
      itemBuilder: _buildDropdownItem,
      itemFilter: (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
      priorityList: [
        CountryPickerUtils.getCountryByIsoCode('GB'),
        CountryPickerUtils.getCountryByIsoCode('CN'),
      ],
      sortComparator: (Country a, Country b) => a.isoCode.compareTo(b.isoCode),
      onValuePicked: (Country country) {
        print("${country.name}");
      },
    );
  }
}
