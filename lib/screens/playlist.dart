import 'package:flutter/material.dart';
import 'package:persional_project/screens/detail.dart';
import 'package:persional_project/screens/pleng.dart';

void main() {
  runApp(playlist());
}

class playlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicPlaylistScreen(),
      // routes: {
      //   '/BottomNavigationBarItem': (context) => pleng(),
      //   '/playlist': (context) => pleng(),
      // },
    );
  }
}

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('pleng'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => MusicPlaylistScreen()),
//             );
//           },
//           child: Text('Go to Playlist'),
//         ),
//       ),
//     );
//   }
// }

class MusicPlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://via.placeholder.com/350x150'), // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pleng()),
                      );
                  },
                ),
                SizedBox(height: 16.0),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage('https://m.media-amazon.com/images/M/MV5BZGM0YjhkZmEtNGYxYy00OTk0LThlNDgtNGQzM2YwNjU0NDQzXkEyXkFqcGdeQXVyMTU3ODQxNDYz._V1_.jpg'), // Replace with your image URL
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'From Taylor Swift',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'By Pleng',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => detail()),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.shuffle, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => detail()),
                        );
                        // Handle shuffle button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.play_circle_fill, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => detail()),
                        );
                        // Handle play button press
                      },
                      iconSize: 64,
                    ),
                    IconButton(
                      icon: Icon(Icons.cloud_download, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => detail()),
                        );
                        // Handle download button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.share, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => detail()),
                        );
                        // Handle share button press
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.music_note, color: Colors.white),
                        title: Text('Fortnight', style: TextStyle(color: Colors.white)),
                        subtitle: Text('Taylor Swift, Post Malone', style: TextStyle(color: Colors.white70)),
                        trailing: Icon(Icons.cloud_download, color: Colors.white),
                      ),
                      ListTile(
                        leading: Icon(Icons.music_note, color: Colors.white),
                        title: Text('So High School', style: TextStyle(color: Colors.white)),
                        subtitle: Text('Taylor Swift', style: TextStyle(color: Colors.white70)),
                        trailing: Icon(Icons.cloud_download, color: Colors.white),
                      ),
                      ListTile(
                        leading: Icon(Icons.music_note, color: Colors.white),
                        title: Text('The Tortured Poets Department', style: TextStyle(color: Colors.white)),
                        subtitle: Text('Taylor Swift', style: TextStyle(color: Colors.white70)),
                        trailing: Icon(Icons.cloud_download, color: Colors.white),
                      ),
                      ListTile(
                        leading: Icon(Icons.music_note, color: Colors.white),
                        title: Text('Guilty as Sin?', style: TextStyle(color: Colors.white)),
                        subtitle: Text('Taylor Swift', style: TextStyle(color: Colors.white70)),
                        trailing: Icon(Icons.cloud_download, color: Colors.white),
                      ),
                      ListTile(
                        leading: Icon(Icons.music_note, color: Colors.white),
                        title: Text('Florida!!!', style: TextStyle(color: Colors.white)),
                        subtitle: Text('Taylor Swift', style: TextStyle(color: Colors.white70)),
                        trailing: Icon(Icons.cloud_download, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Handle bottom navigation tap
        },
      ),
    );
  }
}
