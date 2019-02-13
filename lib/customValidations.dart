

class CustomValidations {
  Function validateKm(double v2) => (value) {
        if (value == "") {
          return "lütfen bir değer giriniz";
        }
        if (double.tryParse(value) < v2) {
          return "küçük değer olamaz";
        }
        return null;
      };
}
