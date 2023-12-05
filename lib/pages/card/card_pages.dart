import 'package:checkout/pages/home/checkout_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/list_tile_pages.dart';
import '../../widget/stack_pages.dart';
import '../../widget/textformfild.dart';

class CardPages extends StatelessWidget {
  const CardPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
        title: Text(
          "Checkout",
          style: GoogleFonts.adamina(
              fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Stack(
              children: [
                SvgPicture.asset("assets/icons/shopping.svg"),
                const Positioned(
                  right: 1,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFFD6867),
                    radius: 6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const stack_svg(),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Select a Payment Method",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ListTailPages(
            image: const Image(
                image: AssetImage("assets/images/Mastercard-logo 1.png")),
            text: Text(
              "Credit Card",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 18),
            ),
            trailing: const Icon(Icons.circle_rounded),
          ),
          ListTailPages(
            image: const Image(image: AssetImage("assets/images/3 3.png")),
            text: Text(
              "Credit Card",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 18),
            ),
            trailing: const Icon(Icons.circle_outlined),
          ),
          ListTailPages(
            image: const Image(image: AssetImage("assets/images/4 112.png")),
            text: Text(
              "Google",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 18),
            ),
            trailing: const Icon(Icons.circle_outlined),
          ),
          const SizedBox(height: 40,),
          const MyTextField(
            hintText: 'Enter card holder name',
            topleftText: Text("Card Holder Name"),
          ),
          const SizedBox(
            height: 22,
          ),
          const MyTextField(
            hintText: '4111 1111 1111 1111 ',
            topleftText: Text("Card  Name"),
          ),
          const SizedBox(
            height: 22,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 180,
                child: MyTextField(
                  hintText: 'MM/YY',
                  topleftText: Text("Expiry Date"),
                ),
              ),
              SizedBox(
                width: 180,
                child: MyTextField(
                  hintText: '123',
                  topleftText: Text("CVV"),
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF000000),
                  fixedSize: const Size(double.maxFinite, 50)),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutPages(),
                  ),
                );
              },
              child: Text(
                "Continue Shopping",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: CupertinoColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
