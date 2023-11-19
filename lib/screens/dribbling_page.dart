// ignore_for_file: public_member_api_docs, sort_constructors_first, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/bottom_nav_bar.dart';
import '../widget/latihan_playlist.dart';

class DribblingPage extends StatelessWidget {
  const DribblingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/latihan3.jpg"),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Text("LATIHAN DRIBBLING",
                        style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.black)),
                    const Text(
                      "Level Dasar",
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      " Dengan kemampuan dribble yang mumpuni kamu bisa menciptakan banyak peluang dan menyajikan permainan yang menghibur. \n Semua penyerang legendaris mempunyai kemampuan dribble yang luar biasa!",
                      // "Passing yang akurat dan kreatif dapat menciptakan peluang gol. Melalui umpan-umpan yang tepat, pemain dapat membuka pertahanan lawan dan menciptakan situasi yang menguntungkan untuk mencetak gol.",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 70),
                    Wrap(
                      spacing: 13,
                      runSpacing: 15,
                      children: <Widget>[
                        PlaylistLatihanCard(latihanNum: 1, press: () {}),
                        PlaylistLatihanCard(
                          latihanNum: 2,
                          press: () {},
                        ),
                        PlaylistLatihanCard(
                          latihanNum: 3,
                          press: () {},
                        ),
                        PlaylistLatihanCard(
                          latihanNum: 4,
                          press: () {},
                        ),
                        PlaylistLatihanCard(
                          latihanNum: 5,
                          press: () {},
                        ),
                        PlaylistLatihanCard(
                          latihanNum: 6,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "LATIHAN DRIBBLE",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w800,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(8),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 2,
                              color: Color.fromARGB(255, 50, 124, 0))
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Align(
                            child: Transform.scale(
                              scale: 1.5,
                              child: Image.asset("assets/images/dribbling.png"),
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Level Menengah",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  // "Selesaikan semua latihan level dasar untuk memulai level ini.",
                                  "Upgrade ke akun Pro untuk membuka level latihan ini.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Lato",
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              "assets/icons/lock1.svg",
                              height: 32,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
