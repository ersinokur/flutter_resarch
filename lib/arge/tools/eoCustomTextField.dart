import 'package:arge_research/arge/tools/validator.dart';
import 'package:flutter/material.dart';

Widget getNumericTextField(String inputBoxName,
    TextEditingController inputcontroller, Icon icon, int totalMainDigit,
    [FormFieldValidator customVal, bool isPassword = false]) {
  return Padding(
    padding:
        const EdgeInsets.all(10.0), //EdgeInsets.only(top: 5.0, bottom: 5.0),
    child: TextFormField(
      validator: customVal,
      // validator: (val) {
      //   if (val == "") {
      //     return 'Lüftden bir değer giriniz';
      //   }
      //   if (double.tryParse(val) <= 0) {
      //     return "$inputBoxName >=0";
      //   }
      //   return null;
      // },
      obscureText: isPassword,
      controller: inputcontroller,
      textInputAction: TextInputAction.done,
      inputFormatters: [
        ValidatorInputFormatter(
          editingValidator: DecimalNumberEditingRegexValidator(totalMainDigit),
        )
      ],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.deepPurple, fontSize: 15.0),
        //  labelText: 'Enter total liters',
        hintText: inputBoxName,
        prefixIcon: icon,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: const BorderSide(color: Colors.redAccent, width: 0.0),
        ),
      ),
      onSaved: (value) {
        // tuketim.alinanYakitMiktari = double.tryParse(value);
        // _toplamTutar = tuketim.toplamTutarGet();
        //_calculated();
      },
    ),
  );
}

String deneme(String value) {}
