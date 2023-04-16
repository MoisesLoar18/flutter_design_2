import 'package:curved_carousel/curved_carousel.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  String chip = "USD";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(254, 237, 216, 1),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios, size: 20)),
                const Text('Back', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Expanded(child: SizedBox()),
                CircleAvatar(radius: 20, backgroundColor: Colors.transparent, child: ClipRRect(borderRadius: BorderRadius.circular(50), child: Image.network('https://randomuser.me/api/portraits/thumb/men/75.jpg'))),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Total Balance", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 10),
                Text("\$54,500 USD", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const Text("Send Money to", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)),
                    const SizedBox(height: 18),
                    CurvedCarousel(
                      middleItemScaleRatio: 1.5,
                      itemBuilder: (_, i) {
                        return CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network('https://randomuser.me/api/portraits/thumb/men/75.jpg'),
                          ),
                        );
                      },
                      itemCount: 20,
                    ),
                    const SizedBox(height: 15),
                    const TextField(
                      style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "\$0.00",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 30),
                        border: InputBorder.none,
                      ),
                    ),
                    // const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            // print(chip);
                            chip = 'EUR';
                          }),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: (chip == 'EUR') ? const Color.fromRGBO(77, 80, 133, 1) : Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Center(child: Text('EUR', style: TextStyle(color: (chip == 'EUR') ? Colors.white : Colors.black))),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () => setState(() {
                            // print(chip);
                            chip = 'USD';
                          }),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: (chip == 'USD') ? const Color.fromRGBO(77, 80, 133, 1) : Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Center(child: Text('USD', style: TextStyle(color: (chip == 'USD') ? Colors.white : Colors.black))),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () => setState(() {
                            // print(chip);
                            chip = 'GBR';
                          }),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: (chip == 'GBR') ? const Color.fromRGBO(77, 80, 133, 1) : Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Center(child: Text('GBR', style: TextStyle(color: (chip == 'GBR') ? Colors.white : Colors.black))),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.transparent,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(120),
                              child: Image.network('https://randomuser.me/api/portraits/men/75.jpg'),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * .02),
                          const Text('Anakiya Manka', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * .8,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(77, 80, 133, 1),
                        ),
                        child: const Text(
                          'Send',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector chipMoney(chip, title) {
    return GestureDetector(
      onTap: () => setState(() {
        chip = title;
      }),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: (chip == title) ? Colors.black : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(child: Text(title, style: TextStyle(color: (chip == title) ? Colors.white : Colors.black))),
      ),
    );
  }
}
