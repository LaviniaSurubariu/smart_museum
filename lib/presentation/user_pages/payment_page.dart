import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../actions/app_action.dart';
import '../../actions/user_s_actions/buy_subscription/buy_subscription.dart';
import '../utils/customAlertDialogOneButton.dart';
import '../utils/customAlertDialogTwoButtons.dart';
import '../utils/extensions.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isLightTheme = false;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  bool useFloatingAnimation = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Glassmorphism? _getGlassmorphismConfig() {
    if (!useGlassMorphism) {
      return null;
    }
    return null;
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final String duration = arguments['duration'] as String;
    final double price = arguments['price'] as double;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/subscriptionPage');
          },
        ),
        title: Text('Payment for $duration'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 16),
                const SizedBox(height: 16),
                CreditCardWidget(
                  enableFloatingCard: useFloatingAnimation,
                  glassmorphismConfig: _getGlassmorphismConfig(),
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  bankName: 'SmartMuseum Bank',
                  frontCardBorder: useGlassMorphism ? null : Border.all(color: Colors.grey),
                  backCardBorder: useGlassMorphism ? null : Border.all(color: Colors.grey),
                  showBackView: isCvvFocused,
                  isHolderNameVisible: true,
                  backgroundImage: useBackgroundImage ? 'assets/card_bg.png' : null,
                  onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
                  customCardTypeIcons: <CustomCardTypeIcon>[
                    CustomCardTypeIcon(
                      cardType: CardType.mastercard,
                      cardImage: Image.asset(
                        'assets/images/mastercard.png',
                        height: 48,
                        width: 48,
                      ),
                    ),
                  ],
                ),
                CreditCardForm(
                  formKey: formKey,
                  obscureCvv: true,
                  cardNumber: cardNumber,
                  cvvCode: cvvCode,
                  cardHolderName: cardHolderName,
                  expiryDate: expiryDate,
                  inputConfiguration: const InputConfiguration(
                    cardNumberDecoration: InputDecoration(
                      labelText: 'Number',
                      hintText: 'XXXX XXXX XXXX XXXX',
                    ),
                    expiryDateDecoration: InputDecoration(
                      labelText: 'Expired Date',
                      hintText: 'XX/XX',
                    ),
                  ),
                  onCreditCardModelChange: onCreditCardModelChange,
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Subtotal',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '$price \$',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54, minimumSize: const Size(double.infinity, 50)),
                  onPressed: () {
                    context.dispatch(BuySubscription(duration: duration, result: _onBuySubscriptionResult));
                  },
                  child: const Text('Pay', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onBuySubscriptionResult(AppAction action) {
    if (action is BuySubscriptionSuccessful) {
      showDialog<CustomAlertDialogTwoButtons>(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialogOneButton(
            title: 'Payment successful',
            content: 'You have successfully bought a subscription.',
            buttonText: 'OK',
            buttonColor: Colors.green,
            iconData: LineAwesomeIcons.check,
            iconColor: Colors.green,
            onButtonPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/profilePage');
            },
          );
        },
      );
    } else if (action is BuySubscriptionError) {
      showDialog<CustomAlertDialogTwoButtons>(
        context: context,
        builder: (BuildContext context) {
          return CustomAlertDialogOneButton(
            title: 'An error occurred',
            content: 'Please try again.',
            buttonText: 'OK',
            buttonColor: Colors.grey,
            iconData: LineAwesomeIcons.exclamation,
            iconColor: Colors.redAccent,
            onButtonPressed: () {
              Navigator.pop(context);
            },
          );
        },
      );
    }
  }
}
