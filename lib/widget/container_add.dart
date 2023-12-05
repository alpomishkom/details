
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class container_add extends StatelessWidget {
  final ImageProvider image;
  const container_add({
    super.key,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: SizedBox(
        height: 146,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 4,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child:  Image(
                          image: image,
                          height: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Modern Chair",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1E1F2E),
                            ),
                          ),
                          SizedBox(height: 5,),

                          Text(
                            "Limited Stock",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xFF9C9C9C),
                            ),
                          ),
                          SizedBox(height: 5,),
                          const Row(
                            children: [
                              Text(r"$100"),
                              SizedBox(width: 8,),
                              SizedBox(width: 18,),
                              Icon(Icons.remove),
                              SizedBox(width: 18,),
                              Text("1"),
                              SizedBox(width: 18,),
                              Icon(Icons.add),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
