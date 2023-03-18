import '../../../conestant/image.dart';

class PaymentMethodModel {
  final String image;
  final String text;
  final bool? borderColor;

  PaymentMethodModel({
    this.borderColor = false,
    required this.text,
    required this.image,
  });
}

List<PaymentMethodModel> paymentMethodModel = [
  PaymentMethodModel(
    text: "Visa",
    image: AppImage.visa,
  ),
  PaymentMethodModel(
    text: "Mastercard",
    image: AppImage.mastercard,
    borderColor: true,
  ),
  PaymentMethodModel(
    text: "Paypal",
    image: AppImage.paypal,
  ),
];
