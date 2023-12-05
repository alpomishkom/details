import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/bottom.dart';
import '../../widget/container_add.dart';
import '../../widget/stack_pages.dart';

class PurchasePages extends StatelessWidget {
  const PurchasePages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: const Column(
        children: [
          stack_svg(),
          SizedBox(
            height: 42,
          ),
          container_add(
            image: AssetImage("assets/images/3 1.png"),
          ),
          container_add(
            image: AssetImage("assets/images/2 1.png"),
          ),
          Spacer(flex: 5,),
          elvatiuonBottom(),
          Spacer(flex: 1,),
        ],
      ),
    );
  }
}

