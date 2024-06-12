// import 'package:flutter/material.dart';
//
// import 'menubar.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Colors.blue,
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             ListTile(
//               tileColor: Colors.orange,
//               leading: Image.asset('assets/user.png'),
//               title: Text("My Profile", style: TextStyle(
//                 fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white,
//               )
//
//               ),
//               subtitle: Text("Hello, Sovantha", style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               )),
//               shape: Border(bottom: BorderSide(width: 0.5)),
//             ),
//             ListTile(
//               title: Text("Pay List"),
//               leading: Image.asset('assets/playlist.png', width: 27,height: 27,),
//               trailing: Icon(Icons.arrow_right),
//             ),
//             ListTile(
//               title: Text("favorite Song"),
//               leading: Image.asset('assets/favoritesong.png', width: 30,height: 30,),
//               trailing: Icon(Icons.arrow_right),
//             ),
//             ListTile(
//               title: Text("Language"),
//               leading: Image.asset('assets/language.png', width: 27,height: 27,),
//               trailing: Icon(Icons.arrow_right),
//             ),
//             ListTile(
//               title: Text("Logout", style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'CustomFont',
//                 color: Colors.red,
//               ),),
//
//               leading: Image.asset('assets/logoutred.png', width: 30,height: 30,),
//             ),
//           ],
//         ),
//       ),
//       appBar: AppBar(
//         title: Text("Music App"),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // Handle search icon press
//             },
//           ),
//           Stack(
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.notifications),
//                 onPressed: () {
//                   // Handle notification icon press
//                 },
//               ),
//               Positioned(
//                 right: 11,
//                 top: 11,
//                 child: Container(
//                   padding: EdgeInsets.all(2),
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   constraints: BoxConstraints(
//                     minWidth: 12,
//                     minHeight: 12,
//                   ),
//                   child: Text(
//                     '3', // Example badge count
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 8,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.play_circle),
//             label: 'Play',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.library_books),
//             label: 'Library',
//           ),
//
//         ],
//         selectedItemColor: Colors.amber[800],
//       ),
//
//       body: Padding(
//         padding: const EdgeInsets.only(
//           left: 15,
//           right: 15.0,
//         ),
//         child: Container(
//           decoration: BoxDecoration(
//               color: Colors.black54,
//               borderRadius: BorderRadius.all(
//                   Radius.circular(20)
//               )
//           ),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Container(
//
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                   top: 20,
//                   bottom: 20
//                 ),
//                 child: Row(
//                   children: [
//                     AppIcon(
//                       icon: Icons.home,
//                       label: 'អាសុដនាគមន៍',
//                       discount: true,
//                       backgroundColor: Colors.orange,
//                     ),
//                     AppIcon(
//                       icon: Icons.movie,
//                       label: 'សម្លុតកម្ម',
//                       discount: true,
//                       backgroundColor: Colors.purple,
//                     ),
//                     AppIcon(
//                       icon: Icons.school,
//                       label: 'វិទ្យាស្ថាន',
//                       discount: false,
//                       backgroundColor: Colors.orangeAccent,
//                     ),
//                     AppIcon(
//                       icon: Icons.home,
//                       label: 'អាសុដនាគមន៍',
//                       discount: true,
//                       backgroundColor: Colors.orange,
//                     ),
//                     AppIcon(
//                       icon: Icons.movie,
//                       label: 'សម្លុតកម្ម',
//                       discount: true,
//                       backgroundColor: Colors.purple,
//                     ),
//                     AppIcon(
//                       icon: Icons.school,
//                       label: 'វិទ្យាស្ថាន',
//                       discount: false,
//                       backgroundColor: Colors.orangeAccent,
//                     ),
//                     AppIcon(
//                       icon: Icons.directions_bus,
//                       label: 'BookMeBus',
//                       discount: false,
//                       backgroundColor: Colors.white,
//                     ),
//                     // Add more AppIcon widgets as needed
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Add your onPressed code here!
//         },
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:persional_project/screens/home_screenss.dart';
import 'home_screen.dart';
import 'menubar.dart';
import 'play_screen.dart';
import 'library_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlayScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LibraryScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              tileColor: Colors.orange,
              leading: Image.asset('assets/user.png'),
              title: Text(
                "My Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Hello, Sovantha",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              shape: Border(bottom: BorderSide(width: 0.5)),
            ),
            ListTile(
              title: Text("Pay List"),
              leading: Image.asset(
                'assets/playlist.png',
                width: 27,
                height: 27,
              ),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              title: Text("favorite Song"),
              leading: Image.asset(
                'assets/favoritesong.png',
                width: 30,
                height: 30,
              ),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              title: Text("Language"),
              leading: Image.asset(
                'assets/language.png',
                width: 27,
                height: 27,
              ),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont',
                  color: Colors.red,
                ),
              ),
              leading: Image.asset(
                'assets/logoutred.png',
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Music App",),
        backgroundColor: Colors.black26,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search icon press
            },
          ),
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  // Handle notification icon press
                },
              ),
              Positioned(
                right: 11,
                top: 11,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: Text(
                    '3', // Example badge count
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: 'Play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15.0,
        ),
        child: Container(
          decoration: BoxDecoration(
              //color: Colors.black54,
              borderRadius: BorderRadius.all(
                  Radius.circular(20)
              )
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 20
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                                Radius.circular(35)
                            )
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://cdns-images.dzcdn.net/images/artist/6815a17fe77c0095b212d887d5f0f795/500x500.jpg"
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                                Radius.circular(35)
                            )
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/564x/8d/01/83/8d0183218ee5837c5daf6d9b5cd20324.jpg"
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                                Radius.circular(35)
                            )
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://yt3.googleusercontent.com/ytc/AIdro_nGYtqihXQdrxu2BiiyolC4W_atUdzYCskwncD2Yg2U1ag=s900-c-k-c0x00ffffff-no-rj"
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                                Radius.circular(35)
                            )
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5zuIJfywSU2G5SUHn6Zs8n9mu6L4WlJFmSHdcjWFUCGlkYOnqJa9xPie4K3nII6bCAgM&usqp=CAU"
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                                Radius.circular(35)
                            )
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://i1.sndcdn.com/artworks-000641592241-yl44cg-t500x500.jpg"
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                                Radius.circular(35)
                            )
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0-4ZJxHM85IV74QIFATgPV_SeP7PvyRegDQ&s"
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                                Radius.circular(35)
                            )
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://yt3.googleusercontent.com/ewO7LMUeJpy38BpkjvQO4xxnbuII82Q-L8wjjs7eSapyxXh3BbqLOrICpmT2i2SbsQsl0Kh5=s900-c-k-c0x00ffffff-no-rj"
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 16,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                                Radius.circular(35)
                            )
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://yt3.googleusercontent.com/ytc/AIdro_khn9vxrzaAyrwaUXCVgWhIVQEgWqhmcigl4QG1ghTmj54=s900-c-k-c0x00ffffff-no-rj"
                          ),
                        ),
                      ),
                    ),
                    // Add more AppIcon widgets as needed
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
