import 'package:flutter/material.dart';
import 'package:health_app_ui/widgets/health_needs_card.dart';
import 'package:health_app_ui/widgets/nearby_doctors_card.dart';
import 'package:health_app_ui/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text('Hi, Jane'),
            Text("How are you feeling today?",style: Theme.of(context).textTheme.caption,)
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Ionicons.notifications_outline)),
          IconButton(onPressed: (){}, icon: Icon(Ionicons.search_outline))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          //Upcoming Card
          const UpComingCard(),
          const SizedBox(height: 25),
          //Health Needs
          Text("Health Needs", style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 15),
          const HealthNeedsCard(),
          const SizedBox(height: 40),
          //Nearby Doctors
          Text("Nearby Doctors", style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 15),
          const NearbyDoctors()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Ionicons.home_outline),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Ionicons.calendar_outline),label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Ionicons.chatbox_ellipses_outline),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Ionicons.person_outline),label: "Profile"),
        ],
      ),
    );
  }
}
