import 'package:flutter/material.dart';

class ListCardsWidget extends StatelessWidget {
  const ListCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
      height: mediaQuery.height * 0.3,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(height: 20, width: 15),
          buildCard(context, 'Add new card', const Color.fromRGBO(254, 237, 216, 1), Colors.black, true),
          const SizedBox(height: 20, width: 20),
          buildCard(context, 'Credit Card', const Color.fromRGBO(77, 80, 133, 1), Colors.white, false, price: '\$365.00', cardNumber: '****1234', logo: 'https://logos-download.com/wp-content/uploads/2016/03/Mastercard_Logo_2019.png'),
          const SizedBox(height: 20, width: 20),
          buildCard(context, 'Debit Card', const Color.fromRGBO(114, 120, 225, 1), Colors.white, false, price: '\$54,500.00', cardNumber: '***5448', logo: 'https://companieslogo.com/img/orig/V.D-e36aebe0.png?t=1633206554'),
        ],
      ),
    );
  }

  Widget buildCard(context, text, color, textColor, newCard, {price, cardNumber, logo}) {
    Size mediaQuery = MediaQuery.of(context).size;

    if (newCard == true) {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/transaction'),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
            // color: const Color.fromRGBO(254, 237, 216, 1),
          ),
          height: mediaQuery.height * 1,
          width: 80,
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/transaction'),
        child: Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
            // color: const Color.fromRGBO(254, 237, 216, 1),
          ),
          height: mediaQuery.height * 1,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 50, height: 50, child: Image(fit: BoxFit.contain, image: NetworkImage(logo))),
              const Expanded(child: SizedBox()),
              Text(cardNumber, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              const Expanded(child: SizedBox()),
              Text(price, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
            ],
          ),
        ),
      );
    }
  }
}
