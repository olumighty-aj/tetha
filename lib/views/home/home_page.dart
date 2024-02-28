import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theta_camera/data/data_provider.dart';
import 'package:theta_camera/models/user_model.dart';
import 'package:theta_camera/views/details/details.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List"),
        centerTitle: true,
      ),
      body: _data.when(
          data: (_data) {
            List<UserModel> userList = _data.map((e) => e).toList();
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: userList.length,
                          itemBuilder: (_, index) {
                            return InkWell(
                              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailScreen(userdetails: userList[index]))),
                              child: Card(
                                color: Colors.purpleAccent,
                                elevation: 4,
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                child: ListTile(
                                  title: Text(
                                    userList[index].username,
                                    style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w600),
                                  ), 
                                  subtitle: Text(
                                    userList[index].name,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  trailing: CircleAvatar(
                                    backgroundImage: NetworkImage("https://media.istockphoto.com/id/1328354601/photo/joyful-young-african-american-woman-listening-to-music-with-headphones-against-blue-background.jpg?s=612x612&w=0&k=20&c=NCtLAaPndnw0dbWh8Fm9qu9NEA79FStSyfr-swmDhw4="),
                                  ),
                                ),
                              ),
                            );
                          }))
                ],
              ),
            );
          },
          error: (err, s) => Text(err.toString()),
          loading: () => const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  color: Colors.green,
                ),
              )),
    );
  }
}
