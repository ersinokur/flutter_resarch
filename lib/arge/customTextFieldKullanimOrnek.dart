import 'package:arge_research/arge/tools/eoCustomTextField.dart';
import 'package:arge_research/customValidations.dart';
import 'package:flutter/material.dart';

class CustomTextFieldKullanimOrnek extends StatefulWidget {
  _CustomTextFieldKullanimOrnekState createState() =>
      _CustomTextFieldKullanimOrnekState();
}

class _CustomTextFieldKullanimOrnekState
    extends State<CustomTextFieldKullanimOrnek> with CustomValidations {
  TextEditingController txtUnitPrice;
  TextEditingController txtKm;
  TextEditingController txtTotalGas;

  final _formKey = GlobalKey<FormState>();

  //FormFieldValidator formFieldValidatortxtKm;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // txtUnitPrice = TextEditingController(text: "varsayılan");
    txtUnitPrice = TextEditingController();
    txtTotalGas = TextEditingController();
    txtKm = TextEditingController();

    txtKm.addListener(_getLastValues);
    txtTotalGas.addListener(_getLastValues);
    txtUnitPrice.addListener(_getLastValues);

    // formFieldValidatortxtKm = (value) {
    //   if (double.tryParse(value) < 5000) {
    //     return "küçük değer olamaz";
    //   }
    // };
  }

  @override
  void dispose() {
    txtUnitPrice.dispose();
    txtKm.dispose();
    txtTotalGas.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  getNumericTextField(
                      "birim fiyat", txtUnitPrice, Icon(Icons.cake), 3),                  
                  getNumericTextField(
                      "Araç km", txtKm, Icon(Icons.cake), 3, validateKm(980.0)),
                  getNumericTextField(
                      "alinan litr", txtTotalGas, Icon(Icons.cake), 1),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: _submitButton(),
                  )
                ],
              ))),
    );
  }

  _getLastValues() {
    setState(() {
      print(
          "Km: ${txtKm.text} Litre: ${txtTotalGas.text} Litre Fiyatı: ${txtUnitPrice.text}");
    });
  }

  _submitButton() {
    return RaisedButton(
        child: Text(
          "Save",
          style: TextStyle(fontSize: 16.9),
        ),
        color: Theme.of(context).accentColor,
        textColor: Colors.white70,
        onPressed: () {
          if (this._formKey.currentState.validate())
            _formKey.currentState.save();
          // setState(() {
          //   tuketim.toplamTutar =
          //       tuketim.alinanYakitMiktari * tuketim.birimFiyat;
          // });

          saveTuketim();
        });
  }

  void saveTuketim() {
    print(
        "Km: ${txtKm.text} Litre: ${txtTotalGas.text} Litre Fiyatı: ${txtUnitPrice.text}");
  }

  String _validateAracKm(String value) {
    if (double.tryParse(value) <= 5500) {
      return "km must  >=0";
    }
    return null;
  }
}
