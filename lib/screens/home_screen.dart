// import 'package:flutter/material.dart';
// import '../constants.dart';
// import '../widget/bottom_nav_bar.dart';
// import '../widget/category_card.dart';
// import '../widget/searchbar.dart';
// import 'control_page.dart';
// import 'dribbling_page.dart';
// import 'passing_page.dart';
// import 'shooting_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Latihan Sepakbola ',
//       theme: ThemeData(
//         fontFamily: "Lato",
//         scaffoldBackgroundColor: kBackgroundColor,
//         textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       bottomNavigationBar: const BottomNavBar(),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             height: size.height * .45,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 alignment: Alignment.center,
//                 fit: BoxFit.cover,
//                 image: AssetImage("assets/images/stadion.jpg"),
//               ),
//             ),
//           ),
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   const SearchWidget(),
//                   const SizedBox(height: 60),
//                   const Text(
//                     "NOW, \nIS YOUR TIME!",
//                     style: TextStyle(
//                       fontSize: 33,
//                       fontWeight: FontWeight.w900,
//                       fontFamily: "Lato",
//                       color: Colors.white,
//                       shadows: [
//                         Shadow(
//                           color: Colors.black,
//                           offset: Offset(2, 2),
//                           blurRadius: 3.0,
//                         )
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       margin: const EdgeInsets.only(top: 120),
//                       child: GridView.count(
//                         crossAxisCount: 2,
//                         childAspectRatio: .98,
//                         crossAxisSpacing: 15,
//                         mainAxisSpacing: 15,
//                         children: <Widget>[
//                           CategoryCard(
//                             title: "PASSING",
//                             imageCard: "assets/images/passing.png",
//                             fontSize: 25,
//                             press: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) {
//                                   return const PassingPage();
//                                 }),
//                               );
//                             },
//                           ),
//                           CategoryCard(
//                             title: "CONTROL",
//                             imageCard: "assets/images/control.png",
//                             fontSize: 25,
//                             press: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) {
//                                   return const ControlPage();
//                                 }),
//                               );
//                             },
//                           ),
//                           CategoryCard(
//                             title: "DRIBBLING",
//                             imageCard: "assets/images/dribbling.png",
//                             fontSize: 25,
//                             press: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) {
//                                   return const DribblingPage();
//                                 }),
//                               );
//                             },
//                           ),
//                           CategoryCard(
//                             title: "SHOOTING",
//                             imageCard: "assets/images/shooting.png",
//                             fontSize: 25,
//                             press: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) {
//                                   return const ShootingPage();
//                                 }),
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../constants.dart';
import '../widget/bottom_nav_bar.dart';
import '../widget/category_card.dart';
import '../widget/searchbar.dart';
import 'control_page.dart';
import 'dribbling_page.dart';
import 'passing_page.dart';
import 'shooting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Be a Pro',
      theme: ThemeData(
        fontFamily: "Lato",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/stadion.jpg"),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SearchWidget(),
                    const SizedBox(height: 60),
                    const Text(
                      "NOW, \nIS YOUR TIME!",
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Lato",
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(2, 2),
                            blurRadius: 3.0,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 120),
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: .98,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          children: <Widget>[
                            CategoryCard(
                              title: "PASSING",
                              imageCard: "assets/images/passing.png",
                              fontSize: 25,
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const PassingPage();
                                  }),
                                );
                              },
                            ),
                            CategoryCard(
                              title: "CONTROL",
                              imageCard: "assets/images/control.png",
                              fontSize: 25,
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const ControlPage();
                                  }),
                                );
                              },
                            ),
                            CategoryCard(
                              title: "DRIBBLING",
                              imageCard: "assets/images/dribbling.png",
                              fontSize: 25,
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const DribblingPage();
                                  }),
                                );
                              },
                            ),
                            CategoryCard(
                              title: "SHOOTING",
                              imageCard: "assets/images/shooting.png",
                              fontSize: 25,
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const ShootingPage();
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
