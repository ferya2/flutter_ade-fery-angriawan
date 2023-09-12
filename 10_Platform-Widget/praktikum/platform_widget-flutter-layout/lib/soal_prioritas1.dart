import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[850],
        child: ListView(
          children: const [
            ListTile(
              title: Text('Home', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Setting', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[850],
      body: ListView(
        children: const [
          ListTile(title: Row(children: [CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,
                  ),
                ),
                SizedBox(width: 10), // Tambahkan sedikit jarak
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Leane Graham', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5,),
                    Text('1-770-736-8031 x56442',style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(title: Row(children: [CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,
                  ),
                ),
                SizedBox(width: 10), // Tambahkan sedikit jarak
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ervin Howell', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5,),
                    Text('010-692-6593 x09125',style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [CircleAvatar(backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,
                  ),
                ),
                SizedBox(width: 10), // Tambahkan sedikit jarak
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Clementine Bauch', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5,),
                    Text('1-463-123-447',style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,
                  ),
                ),
                SizedBox(width: 10), // Tambahkan sedikit jarak
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Patricia Lebsack', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5,),
                    Text('493-170-9623 x156',style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,
                  ),
                ),
                SizedBox(width: 10), // Tambahkan sedikit jarak
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Chelsey Dietrich', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5,),
                    Text('(254)954-1289',style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,
                  ),
                ),
                SizedBox(width: 10), // Tambahkan sedikit jarak
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mrs. Dennis Schulist', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5,),
                    Text('1-477-935-8478 x6430',style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,
                  ),
                ),
                SizedBox(width: 10), // Tambahkan sedikit jarak
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kurtis Weissnat', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5,),
                    Text('210.067.6132',style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
