import 'package:flutter/material.dart';
import 'package:persional_project/screens/playlist.dart';

void main() {
  runApp(pleng());
}

class pleng extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      theme: ThemeData.dark(), // Using dark theme to match the UI in the screenshot
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<Map<String, String>> topArtists = [
    {
      'name': 'Dj Sodaaa',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcHD6gJctTcaMe3fDIM9yafxr3c7O2uk9XqA&s',
    },
    {
      'name': 'Vanda',
      'image': 'https://yt3.googleusercontent.com/ytc/AIdro_khn9vxrzaAyrwaUXCVgWhIVQEgWqhmcigl4QG1ghTmj54=s900-c-k-c0x00ffffff-no-rj', // Replace with actual URL
    },
    {
      'name': 'G-Davit',
      'image': 'https://i.scdn.co/image/ab6761610000e5eb057979eb6268d7d8c46ba438', // Replace with actual URL
    },
    {
      'name': 'Sovntha',
      'image': 'https://scontent.fpnh10-1.fna.fbcdn.net/v/t39.30808-6/433472086_1072950297111359_8264003542769491300_n.jpg?stp=cp6_dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFieIe_n_Fwgl86Y5DAJmjnFIrgjNxZvu0UiuCM3Fm-7Utap6dV1-Nv14s36tgP2pYNA88P4rNB1lX2bwzDnObJ&_nc_ohc=E7XNQT4RW9oQ7kNvgFh6Ybx&_nc_ht=scontent.fpnh10-1.fna&oh=00_AYCPqAzIp83IHG6nLd47PDY-X0BtPdeMXhSuOV87iH_gjQ&oe=666E2F64', // Replace with actual URL
    },
    {
      'name': 'Doung Virakset',
      'image': 'https://yt3.googleusercontent.com/ytc/AIdro_nGYtqihXQdrxu2BiiyolC4W_atUdzYCskwncD2Yg2U1ag=s900-c-k-c0x00ffffff-no-rj', // Replace with actual URL
    },
    {
      'name': 'Sin Sisamut',
      'image': 'https://i1.sndcdn.com/artworks-000641592241-yl44cg-t500x500.jpg', // Replace with actual URL
    },
  ];

  final List<Map<String, String>> exclusiveReleases = [
    {
      'title': 'Reung Maom Pek Hery',
      'artist': 'Yan Socheataa',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/7/7c/DJ_SODA_2024_P1.png', // Replace with actual URL
    },
    {
      'title': 'Leak Tuk (Live Acoustic Cover)',
      'artist': 'Artist 2',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcHD6gJctTcaMe3fDIM9yafxr3c7O2uk9XqA&s', // Replace with actual URL
    },
    {
      'title': 'Linju Meas Bong (Live Acoustic Cover)',
      'artist': 'The Homie',
      'image': 'https://cdn.i-scmp.com/sites/default/files/styles/768x768/public/d8/images/canvas/2021/06/23/c304504c-2a10-4225-808e-b6a61ff64ed9_923ee835.jpg?itok=BGZNoQ_h&v=1624420839', // Replace with actual URL
    },
  ];

  final List<Map<String, dynamic>> specialPlaylists = [
    {
      'title': 'TikTok Plays 2024',
      'artists': 'Billie Eilish, FINNEAS, ...',
      'images': [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVdA9Hz1l3PWp8PTPzHcEKSAOS6oX-txZoR17_RrRldMZ8ux8pn-YCSbzI3axR7-vxlAw&usqp=CAU", // Placeholder image
      ],
    },
    {
      'title': 'Pleng Acoustic Station',
      'artists': 'Navit, The Homie, Jan...',
      'images': [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0JEPRyTC6C4OtyryaJVxl_-nsb5mTXD8W_g&s", // Placeholder image
      ],
    },
    {
      'title': 'Hottest Releases',
      'artists': 'Billie Eilish, FINNEAS, ...',
      'images': [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcHD6gJctTcaMe3fDIM9yafxr3c7O2uk9XqA&s', // Placeholder image
      ],
    },
    {
      'title': 'Rain of Hope',
      'artists': 'Taylor Swift, ...',
      'images': [
        'https://m.media-amazon.com/images/M/MV5BZGM0YjhkZmEtNGYxYy00OTk0LThlNDgtNGQzM2YwNjU0NDQzXkEyXkFqcGdeQXVyMTU3ODQxNDYz._V1_.jpg', // Placeholder image
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: <Widget>[
              ListTile(
                tileColor: Colors.blue,
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
                title: Text("Pay List", style: TextStyle(color: Colors.black)),
                leading: Image.asset(
                  'assets/playlist.png',
                  width: 27,
                  height: 27,
                ),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => playlist()),
                  );
                },
              ),
              ListTile(
                title: Text("favorite Song", style: TextStyle(color: Colors.black)),
                leading: Image.asset(
                  'assets/favoritesong.png',
                  width: 30,
                  height: 30,
                ),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                title: Text("Language", style: TextStyle(color: Colors.black)),
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
          backgroundColor: Colors.black,
          title: Text('pleng', style: TextStyle(color: Colors.green)),
          bottom: TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Music Charts'),
              Tab(text: 'Discover Playlists'),
              Tab(text: 'Music Videos'),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          children: [
            buildDiscoverTab(context),
            Center(child: Text('Music Charts')),
            Center(child: Text('Discover Playlists')),
            Center(child: Text('Music Videos')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
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
        ),
      ),
    );
  }

  Widget buildDiscoverTab(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Artists Section
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: topArtists.map((artist) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => playlist(
                          // artistName: artist['name']!,
                          // artistImage: artist['image']!,
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(artist['image']!),
                        ),
                        SizedBox(height: 5),
                        Text(
                          artist['name']!,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20),

          // Pleng Exclusive Releases
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Pleng Exclusive Releases', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: exclusiveReleases.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(exclusiveReleases[index]['image']!), // Image from URL
                title: Text(exclusiveReleases[index]['title']!, style: TextStyle(color: Colors.white)),
                subtitle: Text(exclusiveReleases[index]['artist']!, style: TextStyle(color: Colors.white54)),
                trailing: Icon(Icons.chevron_right, color: Colors.white),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReleaseDetailPage(
                        title: exclusiveReleases[index]['title']!,
                        artist: exclusiveReleases[index]['artist']!,
                        image: exclusiveReleases[index]['image']!,
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // Special Playlists by Pleng
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Text('Special Playlists by Pleng', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: specialPlaylists.map((playlist) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlaylistDetailPage(
                          playlistTitle: playlist['title']!,
                          playlistArtists: playlist['artists']!,
                          playlistImages: playlist['images']!,
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: playlist['images'].map<Widget>((image) {
                            return Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(image), // Use the actual image URL
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 5),
                        Text(
                          playlist['title']!,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          playlist['artists']!,
                          style: TextStyle(color: Colors.white54, fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ArtistDetailPage extends StatelessWidget {
  final String artistName;
  final String artistImage;

  ArtistDetailPage({required this.artistName, required this.artistImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artistName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(artistImage),
            SizedBox(height: 20),
            Text(artistName, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

class ReleaseDetailPage extends StatelessWidget {
  final String title;
  final String artist;
  final String image;

  ReleaseDetailPage({required this.title, required this.artist, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(image),
            SizedBox(height: 20),
            Text(title, style: TextStyle(fontSize: 24)),
            Text(artist, style: TextStyle(fontSize: 18, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class PlaylistDetailPage extends StatelessWidget {
  final String playlistTitle;
  final String playlistArtists;
  final List<String> playlistImages;

  PlaylistDetailPage({required this.playlistTitle, required this.playlistArtists, required this.playlistImages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(playlistTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: playlistImages.map((image) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(image, width: 100, height: 100),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(playlistTitle, style: TextStyle(fontSize: 24)),
            Text(playlistArtists, style: TextStyle(fontSize: 18, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Text('This is the new page'),
      ),
    );
  }
}
