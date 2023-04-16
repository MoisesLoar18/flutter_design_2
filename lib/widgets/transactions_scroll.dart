import 'package:flutter/material.dart';

class TransactionScrollWidget extends StatelessWidget {
  const TransactionScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            reverse: false,
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 10),
                const Text('Transactions', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30)),
                const SizedBox(height: 20),
                itemWidget("https://loodibee.com/wp-content/uploads/Netflix-N-Symbol-logo.png"),
                const SizedBox(height: 20),
                itemWidget('https://companieslogo.com/img/orig/AMZN-e9f942e4.png?t=1632523695'),
                const SizedBox(height: 20),
                itemWidget("https://loodibee.com/wp-content/uploads/Netflix-N-Symbol-logo.png"),
                const SizedBox(height: 20),
                itemWidget('https://companieslogo.com/img/orig/AMZN-e9f942e4.png?t=1632523695'),
                const SizedBox(height: 20),
                itemWidget("https://loodibee.com/wp-content/uploads/Netflix-N-Symbol-logo.png"),
                const SizedBox(height: 20),
                itemWidget('https://companieslogo.com/img/orig/AMZN-e9f942e4.png?t=1632523695'),
                const SizedBox(height: 20),
                itemWidget("https://loodibee.com/wp-content/uploads/Netflix-N-Symbol-logo.png"),
                const SizedBox(height: 20),
                itemWidget('https://companieslogo.com/img/orig/AMZN-e9f942e4.png?t=1632523695'),
                const SizedBox(height: 20),
                itemWidget("https://loodibee.com/wp-content/uploads/Netflix-N-Symbol-logo.png"),
                const SizedBox(height: 20),
                itemWidget('https://companieslogo.com/img/orig/AMZN-e9f942e4.png?t=1632523695'),
                const SizedBox(height: 20),
                itemWidget("https://loodibee.com/wp-content/uploads/Netflix-N-Symbol-logo.png"),
                const SizedBox(height: 20),
                itemWidget('https://companieslogo.com/img/orig/AMZN-e9f942e4.png?t=1632523695'),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget itemWidget(image) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.amber, width: 2),
          ),
          // child: const Image(image: NetworkImage('https://companieslogo.com/img/orig/AMZN-e9f942e4.png?t=1632523695')),
          child: Image(image: NetworkImage(image)),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('15 Jun, 2020', style: TextStyle(color: Colors.black26, fontWeight: FontWeight.bold, fontSize: 15)),
            Text('Amazon', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
          ],
        ),
        const Spacer(),
        const Text('\$ 310.00', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
      ],
    );
  }
}
