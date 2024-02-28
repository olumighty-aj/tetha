import 'package:flutter/material.dart';
import 'package:theta_camera/models/user_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.userdetails});
  final UserModel userdetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                maxRadius: 60,
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/id/1328354601/photo/joyful-young-african-american-woman-listening-to-music-with-headphones-against-blue-background.jpg?s=612x612&w=0&k=20&c=NCtLAaPndnw0dbWh8Fm9qu9NEA79FStSyfr-swmDhw4="),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      // Icon(Icons.person_2, color: Colors.white,),
                      // SizedBox(width: 45,),
                      Text(
                    userdetails.username,
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ))),
            Text(
              userdetails.name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),

            Text(
              userdetails.email,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      )),
    );
  }
}
