import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:credit_card_flip/credit_card_flip.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Card Animation',
          style: TextStyle(
              decoration: TextDecoration.none, decorationThickness: 2.85),
        ),
      ),
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FlipCard(
            fill: Fill.fillBack,
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            front: Text('Priyansh'),
            back: Text('Srivastava'),
            // autoFlipDuration: Duration(seconds: 1),
            flipOnTouch: true,
          ),
          CreditCardFlip(
            cardNumber: '4414 7890 8732 4534',
            cardHolder: 'Priyansh Srivastava',
            cardExpiration: '05/25',
            bank: 'State Bank of India',
            securityCode: '777',
            // qrCode: 'https://github.com/thiagolop'
          ),
          SizedBox(height: 10),
          CreditCard(
              cardNumber: '4414 7890 8732 4534',
              cardHolder: 'Ashraf ull Haq bin Ladin',
              cardExpiration: '05/50',
              bank: 'State bank of India',
              securityCode: '111',
              face: CreditCardFace.front),
          SizedBox(height: 10),
          CreditCard(
            cardNumber: '4414 7890 8732 4534',
            cardHolder: 'Ashraf ull Haq bin Ladin',
            cardExpiration: '05/50',
            bank: 'State Bank of India',
            face: CreditCardFace.back,
            securityCode: '111',
            // qrCode:
            //     'https://www.linkedin.com/in/thiago-fernandes-lopes-725aa5224/',
          )
        ]),
      ),
    );
  }
}
