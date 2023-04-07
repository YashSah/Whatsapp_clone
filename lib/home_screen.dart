import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}s

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('Whatsapp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons. camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) => [
                    const PopupMenuItem(
                      value: 1,
                        child: Text("New Group",)
                    ),
                    const PopupMenuItem(
                        value: 2,
                        child: Text("Settings",)
                    ),
                    const PopupMenuItem(
                        value: 3,
                        child: Text("LogOut",)
                    ),
                  ],
              ),
              const SizedBox(width: 10,),
            ],
          ),
          body:  TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context, index){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  title: Text('john wick'),
                  subtitle: Text('where is my dog'),
                  trailing: Text('6:26 pm'),
                );
              }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){

                    if(index == 0){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('New Updates'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.green,
                                        width: 3
                                    )
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage('https://pixabay.com/photos/man-face-portrait-bearded-man-1845814/'),
                                ),
                              ),
                              title: const Text('john wick'),
                              subtitle: const Text('35 min ago'),

                            ),
                          ],
                        ),
                      );
                    }
                    else {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.green,
                                  width: 3
                              )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://pixabay.com/photos/man-face-portrait-bearded-man-1845814/'),
                          ),
                        ),
                        title: const Text('john wick'),
                        subtitle: const Text('35 min ago'),

                      );
                    }

                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://pixabay.com/photos/man-face-portrait-bearded-man-1845814/'),
                      ),
                      title: const Text('john wick'),
                      subtitle: Text(index /2==0 ? 'you missed a audio call' : 'call time is 12:23'),
                      trailing: Icon(index /2==0 ? Icons.phone : Icons.call),
                    );
                  }),
            ],
          ),
        )
    );
  }
}
