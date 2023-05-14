import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeShope extends StatelessWidget {
  final String Imagecoffee;
  final String NameShop;
  final String Rating;
  final String JamBuka;

  const CoffeeShope({
    Key? key,
    required this.Imagecoffee,
    required this.NameShop,
    required this.Rating,
    required this.JamBuka,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 240,
      child: Stack(children: [
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 5,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Image(
                  image: NetworkImage(Imagecoffee),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 10,
          child: SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NameShop,
                    style: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(Rating),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        JamBuka,
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
