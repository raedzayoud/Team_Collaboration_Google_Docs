import 'package:flutter/material.dart';
import 'package:team_collaboration_google_docs/feature/home/presentation/view/metting_view.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  int _page = 0;

  List<Widget> pages = [
    MettingView(),
    //const HistoryMeetingScreen(),
    const Text('Contacts'),
    const Text('Contacts'),
    TextButton(
      child: const Text('Log Out'),
      onPressed: () {
        // AuthMethods().signOut();
      },
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(46, 46, 46, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(46, 46, 46, 1),
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(26, 26, 26, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.comment_bank,
            ),
            label: 'Meet & Char',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock_clock,
            ),
            label: 'Meetings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
