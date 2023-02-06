import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:gossiper/CallsApp.dart';
import 'package:gossiper/ChatsApp.dart';
import 'package:gossiper/StoriesApp.dart';
import 'package:gossiper/drawerApp.dart';

class AppBarApp extends StatefulWidget {
  const AppBarApp({super.key});

  @override
  State<AppBarApp> createState() => _AppBarAppState();
}

class _AppBarAppState extends State<AppBarApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
            elevation: 10.2,
            title: Row(
              children: [
                Image.asset('icons/AppBarLogo.png', scale: 12.0),
                SizedBox(
                  width: 10,
                ),
                Text('Gossiper',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Dancing_Script',
                        fontSize: 50)),
              ],
            ),
            backgroundColor: Colors.lime,
            actions: [
              IconButton(
                  icon: Icon(Icons.search, color: Colors.black),
                  onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());

                    // Fluttertoast.showToast(
                    //     msg: "No Items are available to search",
                    //     toastLength: Toast.LENGTH_SHORT,
                    //     gravity: ToastGravity.CENTER);
                  }),
              PopupMenuButton<String>(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(child: Text('Create New Group')),
                        PopupMenuItem(child: Text('Starred Messages')),
                      ])
            ],
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.green,
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.message,
                    color: Colors.black,
                  ),
                  text: 'Chats',
                ),
                Tab(
                    icon: Icon(
                      Icons.book,
                      color: Colors.black,
                    ),
                    text: 'Stories'),
                Tab(
                    icon: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    text: 'Calls')
              ],
            )),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [ChatsApp(), StoriesApp(), CallsApp()],
      ),
      drawer: DrawerApp(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.lime,
        child: const Icon(Icons.send),
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.cyanAccent,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        });
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
        child: Text(
      query,
      style: TextStyle(fontSize: 50, color: Colors.black),
    ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = ['Person1', 'Person2', 'Person3'];
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: ((context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        }));
  }
}
