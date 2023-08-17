// import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/Appbar.dart';
// import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/MainDashboard.dart';
// import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/Side_menu.dart';
// import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
// import 'package:dot_me/View/Utils/Responsive/Risponsive.dart';
import 'package:dot_me/View/Screen/ChatScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/KalenderScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/MainDashboard.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/Appbar.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
import 'package:dot_me/View/Screen/HomeScreen/SocailMeScreen.dart';
import 'package:dot_me/View/Screen/HomeScreen/chatsScreen/web_layout.dart';
import 'package:dot_me/View/Screen/PaymentScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MainScreen extends StatefulWidget {
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   @override
//   bool showScreen = false;

//   final List<Widget> _screens = [
//     // Content for Home tab
//     Container(
//       color: Colors.yellow.shade100,
//       alignment: Alignment.center,
//       child: const Text(
//         'Home',
//         style: TextStyle(fontSize: 40),
//       ),
//     ),
//     // Content for Feed tab
//     Container(
//       color: Colors.purple.shade100,
//       alignment: Alignment.center,
//       child: const Text(
//         'Feed',
//         style: TextStyle(fontSize: 40),
//       ),
//     ),
//     // Content for Favorites tab
//     Container(
//       color: Colors.red.shade100,
//       alignment: Alignment.center,
//       child: const Text(
//         'Favorites',
//         style: TextStyle(fontSize: 40),
//       ),
//     ),
//     // Content for Settings tab
//     Container(
//       color: Colors.pink.shade300,
//       alignment: Alignment.center,
//       child: const Text(
//         'Settings',
//         style: TextStyle(fontSize: 40),
//       ),
//     )
//   ];

//   int _selectedIndex = 0;

//   Widget build(BuildContext context) {
//     return Scaffold(
//          bottomNavigationBar:  MediaQuery.of(context).size.width < 640?
//       BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           unselectedItemColor: Colors.grey,
//           selectedItemColor: Colors.indigoAccent,
//           // called when one tab is selected
//           onTap: (int index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//           // bottom tab items
//           items: const [
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.feed), label: 'Feed'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite), label: 'Favorites'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.settings), label: 'Settings')
//           ]):null,
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // We want this side menu only for large screen
//             if (Responsive.isDesktop(context))
//               Expanded(
//                   flex: 1,
//                   // default flex = 1
//                   // and it takes 1/6 part of the screen
//                   child: Container(
//                     height: double.infinity,
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Column(
//                           children: [
//                             2.verticalSpace,
//                             Container(
//                               margin: const EdgeInsets.symmetric(
//                                   horizontal: 5, vertical: 8),
//                               height: 52,
//                               width: 52,
//                               decoration: const BoxDecoration(
//                                   image: DecorationImage(
//                                       image: AssetImage('assets/logoball.png'),
//                                       fit: BoxFit.fill)),
//                             ),
//                             const SizedBox(
//                               width: 35,
//                               child: Divider(
//                                 thickness: 1,
//                                 color: Color(0xffF3F3F3),
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 showScreen = true;
//                               },
//                               child: DrawerIconButton(
//                                 image: 'assets/dotedicon.png',
//                               ),
//                             ),
//                             DrawerIconButton(
//                               image: 'assets/calendericon.png',
//                             ),
//                             DrawerIconButton(
//                               image: 'assets/personicon.png',
//                             ),
//                             DrawerIconButton(
//                               image: 'assets/massegebox.png',
//                             ),
//                             DrawerIconButton(
//                               image: 'assets/notesicon.png',
//                             ),
//                             DrawerIconButton(
//                               image: 'assets/meicon.png',
//                             ),
//                             const Spacer(),
//                             DrawerIconButton(
//                               image: 'assets/logout.png',
//                             ),
//                           ],
//                         ),
//                         const VerticalDivider(
//                           thickness: 2,
//                           color: Color(0xffF3F3F3),
//                         )
//                       ],
//                     ),
//                   )),
//            const  Expanded(
//               // It takes 5/6 part of the screen
//               flex: 15,

//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   AppbarWidget(),
//                   Divider(
//                     thickness: 1,
//                     color: Color(0xffF3F3F3),
//                   ),

//                       MainDashboard()

//                   ],

//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [
    // Content for Home tab
    MainDashboard(),
    // Content for Feed tab
    KalenderScreen(),
    // Content for Favorites tab
    SocailScreen(),
    // Content for Settings tab
    const ChatScreen(),
    const WebLayoutScreen(),
    const PaymentScreen(),
    const WebLayoutScreen()
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? BottomNavigationBar(
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigoAccent,
              // called when one tab is selected
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              // bottom tab items
              items: [
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/dotedicon.png',
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/calendericon.png',
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/personicon.png',
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/massegebox.png',
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: DrawerIconButton(
                      image: 'assets/notesicon.png',
                    ),
                  ),
                ])
          : null,
      body: Stack(
        children: [
          Expanded(
            child: Row(
              children: [
                if (MediaQuery.of(context).size.width >= 640)
                  NavigationRail(
                    onDestinationSelected: (int index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    selectedIndex: _selectedIndex,

                    destinations: [
                      NavigationRailDestination(
                          icon: Container(
                            height: 48,
                            width: 48,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/logoball.png'),
                                    fit: BoxFit.fill)),
                          ),
                          label: Text('ball')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/dotedicon.png',
                          ),
                          label: Text('Home')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/calendericon.png',
                          ),
                          label: const Text('Feed')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/personicon.png',
                          ),
                          label: Text('Favorites')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/massegebox.png',
                          ),
                          label: Text('Settings')),
                      NavigationRailDestination(
                          icon: DrawerIconButton(
                            image: 'assets/notesicon.png',
                          ),
                          label: Text('Settings')),
                      NavigationRailDestination(
                        label: Text('home'),
                        icon: DrawerIconButton(
                          image: 'assets/meicon.png',
                        ),
                      ),
                    ],

                    labelType: NavigationRailLabelType.none,

                    // Called when one tab is selected
                  ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: _screens[_selectedIndex],
                )),
              ],
            ),
          ),
          Positioned(
            left: 60,
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.93,
                  // color: Colors.deepOrange.shade100,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade200))),
                  child: const AppbarWidget(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
