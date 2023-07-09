import 'package:flutter/material.dart';
import 'package:new_internship/componentt/aadhar.dart';
import 'package:new_internship/componentt/Customcolumn.dart';
import 'package:new_internship/componentt/phonenumber.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController schoolController = TextEditingController();
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Learn',
      style: optionStyle,
    ),
    Text(
      'Index 2: Competition',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.green.shade900,
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Learn',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.sports_bar),
            label: 'Competition',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                  'assets/kidimage.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Aryan Pandit',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              subtitle: const Text(
                'Red House',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Divider(),
            const Text(
              'Aadhar Number:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            AadhaarNumberScreen(),
            const Text(
              'Phone Number:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            PhoneNumber(),
            const Text(
              'School Name:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: schoolController,
              decoration: const InputDecoration(
                  hintText: 'Abc-School',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  )),
              maxLines: 1,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomColumn(
                    Icon: const Icon(
                      Icons.notifications_paused_rounded,
                      color: Colors.white,
                    ),
                    Text: const Text(
                      'Notications',
                      style: TextStyle(color: Colors.white),
                    )),
                CustomColumn(
                    Icon: const Icon(
                      Icons.leaderboard,
                      color: Colors.white,
                    ),
                    Text: const Text(
                      'Leaderboard',
                      style: TextStyle(color: Colors.white),
                    )),
                CustomColumn(
                    Icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    Text: const Text(
                      'settings',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.green.shade600,
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 24,
                      color: Colors.white70,
                    ),
                    title: Text(
                      'Contribution',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing:
                        Icon(Icons.forward, size: 26, color: Colors.white70),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.mail_rounded,
                      size: 24,
                      color: Colors.white70,
                    ),
                    title: Text(
                      'View Plans',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing:
                        Icon(Icons.forward, size: 24, color: Colors.white70),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: ListTile(
                      leading: Icon(
                        Icons.share,
                        size: 24,
                        color: Colors.white70,
                      ),
                      title: Text(
                        'Share',
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing:
                          Icon(Icons.forward, size: 24, color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            //BottomNavigationBarExample(),
          ],
        ),
      ),
    );
  }
}
