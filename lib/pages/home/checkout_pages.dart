import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/stack_pages.dart';
import '../../widget/textformfild.dart';

class CheckoutPages extends StatefulWidget {
  const CheckoutPages({super.key});

  @override
  State<CheckoutPages> createState() => _CheckoutPagesState();
}

class _CheckoutPagesState extends State<CheckoutPages> {
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
          Column(
            children: [
              stack_svg(),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Enter Shipping Details",
                style: GoogleFonts.adamina(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 26,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyTextField(
                    topleftText: Text('Full Name*'),
                    hintText: 'Enter Full Name',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    topleftText: Text('Phone Number*'),
                    hintText: '+998 |',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    hintText: 'Select Province',
                    icon: Icon(Icons.keyboard_arrow_down),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    hintText: 'Select City',
                    icon: Icon(Icons.keyboard_arrow_down),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    topleftText: Text('Street Address*'),
                    hintText: 'Enter street address',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    topleftText: Text('Postal Code*'),
                    hintText: 'Enter postal code',
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(282, 48),
              backgroundColor: Colors.black
            ),
            onPressed: () {},
            child: Text(
              "Confirm",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: CupertinoColors.white
              ),
            ),
          ),
          const SizedBox(height: 34,),
        ],
      ),
    );
  }
}
