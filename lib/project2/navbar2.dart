import 'package:flutter/material.dart';
import 'package:untitled/project2/favourite.dart';
import 'package:untitled/project2/home.dart';
import 'package:untitled/project2/profile.dart';
import 'package:untitled/project2/search.dart';

class Navbar2 extends StatefulWidget {
  const Navbar2({super.key});

  @override
  State<Navbar2> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar2> {
  List<Map<String, dynamic>> alldata = [
    {
      'landscapeimage': 'assets/project2/spidermanlandscape.png',
      'mname': 'SpiderMan',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/spiderman.png',
      'rating': '4.3',
      'releasedate': '2022',
      'duration': '2h 3m',
      'type': 'Comedy',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/jokerlandscape.png',
      'mname': 'The Joker',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/joker.png',
      'rating': '4.9',
      'releasedate': '2021',
      'duration': '2h 10m',
      'type': 'Action,Drama',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },

    {
      'landscapeimage': 'assets/project2/inceptionlandscape.png',
      'mname': 'Inception',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/inception.jpg',
      'rating': '4.9',
      'releasedate': '2018',
      'duration': '2h 40m',
      'type': 'Comedy,Sci-fi',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/snowwhite.jpeg',
      'mname': 'SnowWhite',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/snowwhite.jpeg',
      'rating': '4.7',
      'releasedate': '2023',
      'duration': '2h 17m',
      'type': 'Comedy',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor2.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor3.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor4.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor1.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/interstellar.png',
      'mname': 'Interstellar',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/interstellar.png',
      'rating': '4.5',
      'releasedate': '2014',
      'duration': '2h 40m',
      'type': 'Adventure',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',

      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/borderline.jpg',
      'mname': 'Borderline',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/borderline.jpg',
      'rating': '4.8',
      'releasedate': '2021',
      'duration': '1h 54m',
      'type': 'Action',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor2.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor3.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor1.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/thelake.webp',
      'mname': 'The Lake',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/thelake.webp',
      'rating': '4.3',
      'releasedate': '2020',
      'duration': '1h 58m',
      'type': 'Action',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor3.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor1.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/darkknight.jpg',
      'mname': 'The Dark knight',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/darkknight.jpg',
      'rating': '4.3',
      'releasedate': '2016',
      'duration': '2h 20m',
      'type': 'Action',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },

    {
      'landscapeimage': 'assets/project2/theavengers.png',
      'mname': 'The Avengers',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/theavengers.png',
      'rating': '4.6',
      'releasedate': '2016',
      'duration': '2h 30m',
      'type': 'Adventure',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },

    {
      'landscapeimage': 'assets/project2/avengerslandscape.png',
      'mname': 'The Avengers',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/avengersendgame.png',
      'rating': '4.2',
      'releasedate': '2020',
      'duration': '1h 55m',
      'type': 'Drama',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/parasite.png',
      'mname': 'Parasite',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/parasite.png',
      'rating': '4.9',
      'releasedate': '2023',
      'duration': '1h 59m',
      'type': 'Sci-fi',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
  ];

  List<Map<String, dynamic>> action = [
    {
      'landscapeimage': 'assets/project2/interstellarlandscape.png',
      'mname': 'Interstellar',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/interstellar.png',
      'rating': '4.5',
      'releasedate': '2014',
      'duration': '2h 40m',
      'type': 'Adventure',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/borderline.jpg',
      'mname': 'Borderline',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/borderline.jpg',
      'rating': '4.8',
      'releasedate': '2021',
      'duration': '1h 54m',
      'type': 'Action',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor2.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor3.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor1.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/thelake.webp',
      'mname': 'The Lake',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/thelake.webp',
      'rating': '4.3',
      'releasedate': '2020',
      'duration': '1h 58m',
      'type': 'Action',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor3.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor1.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },

    {
      'landscapeimage': 'assets/project2/darkknight.jpg',
      'mname': 'The Avengers',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/theavengers.png',
      'rating': '4.6',
      'releasedate': '2016',
      'duration': '2h 30m',
      'type': 'Adventure',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
  ];

  List<Map<String, dynamic>> comedy = [
    {
      'landscapeimage': 'assets/project2/spidermanlandscape.png',
      'mname': 'SpiderMan',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/spiderman.png',
      'rating': '4.3',
      'releasedate': '2022',
      'duration': '2h 3m',
      'type': 'Comedy',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/inceptionlandscape.png',
      'mname': 'Inception',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/inception.jpg',
      'rating': '4.9',
      'releasedate': '2018',
      'duration': '2h 40m',
      'type': 'Comedy,Sci-fi',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
  ];

  List<Map<String, dynamic>> drama = [
    {
      'landscapeimage': 'assets/project2/jokerlandscape.png',
      'mname': 'The Joker',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/joker.png',
      'rating': '4.9',
      'releasedate': '2021',
      'duration': '2h 10m',
      'type': 'Action,Drama',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/borderline.jpg',
      'mname': 'Borderline',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/borderline.jpg',
      'rating': '4.8',
      'releasedate': '2021',
      'duration': '1h 54m',
      'type': 'Action',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor2.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor3.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor1.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },

    {
      'landscapeimage': 'assets/project2/snowwhite.jpeg',
      'mname': 'SnowWhite',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/snowwhite.jpeg',
      'rating': '4.7',
      'releasedate': '2023',
      'duration': '2h 17m',
      'type': 'Comedy',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor2.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor3.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor4.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor1.png'},
      ],
    },

    {
      'landscapeimage': 'assets/project2/avengerslandscape.png',
      'mname': 'Avengers',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/avengersendgame.png',
      'rating': '4.2',
      'releasedate': '2020',
      'duration': '1h 55m',
      'type': 'Drama',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
  ];

  List<Map<String, dynamic>> scifi = [
    {
      'landscapeimage': 'assets/project2/parasite.png',
      'mname': 'Parasite',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/parasite.png',
      'rating': '4.8',
      'releasedate': '2023',
      'duration': '1h 59m',
      'type': 'Sci-fi',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/snowwhite.jpeg',
      'mname': 'SnowWhite',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/snowwhite.jpeg',
      'rating': '4.7',
      'releasedate': '2023',
      'duration': '2h 17m',
      'type': 'Comedy',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor2.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor3.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor4.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor1.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/darkknight.png',
      'mname': 'The Dark knight',
      'movieshortdesc': 'Batman raises the stakes in his war on crime',
      'profileimage': 'assets/project2/darkknight.jpg',
      'rating': '4.8',
      'releasedate': '2016',
      'duration': '2h 20m',
      'type': 'Action',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor1.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor3.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
    {
      'landscapeimage': 'assets/project2/thelake.webp',
      'mname': 'The Lake',
      'movieshortdesc': 'Snow white with a red apple in hand.',
      'profileimage': 'assets/project2/thelake.webp',
      'rating': '4.3',
      'releasedate': '2020',
      'duration': '1h 58m',
      'type': 'Action',
      'description':
          'A team of explorers travel through a wormhole in space in an attempt to ensure humaity survival',
      'actors': [
        {"name": 'Matthew McConaughey', "image": 'assets/project2/actor3.png'},
        {"name": 'Jessica Chastain', "image": 'assets/project2/actor2.png'},

        {"name": 'Anne Hathaway', "image": 'assets/project2/actor1.png'},

        {"name": 'Michael Caine', "image": 'assets/project2/actor4.png'},
      ],
    },
  ];

  List<Map<String, dynamic>> watchlist = [];

  late List pages = [
    home(
      alldatac: alldata,
      actionc: action,
      comedyc: comedy,
      dramac: drama,
      scific: scifi,
      watchlist: watchlist,
    ),
    search(searchlist: alldata, watchlist: watchlist),
    favourite(watchlist: watchlist),
    profile(),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey.shade900,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedindex,
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },

          unselectedLabelStyle: TextStyle(fontSize: 10),
          selectedLabelStyle: TextStyle(
            color: Colors.red,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          selectedIconTheme: IconThemeData(color: Colors.red),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                (selectedindex == 0 ? Icons.home : Icons.home_outlined),
              ),
              label: 'Home',
            ),

            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),

            BottomNavigationBarItem(
              icon: Icon(
                selectedindex == 2
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
              ),
              label: 'WatchList',
            ),

            BottomNavigationBarItem(
              icon: Icon(
                selectedindex == 3 ? Icons.person : Icons.person_outline,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
