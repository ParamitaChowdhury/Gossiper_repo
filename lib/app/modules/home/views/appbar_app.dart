import 'package:flutter/material.dart';

import 'package:gossiper/app/modules/home/views/calls_app.dart';
import 'package:gossiper/app/modules/home/views/chats_app.dart';
import 'package:gossiper/app/modules/home/views/StoriesApp.dart';
import 'package:gossiper/global_colors.dart';
import 'package:gossiper/app/modules/home/views/new_group_app.dart';
import 'package:provider/provider.dart';

import '../../../../theme.dart';
import 'navigation_drawer_app.dart';

class AppBarApp extends StatefulWidget {
  const AppBarApp({super.key});

  @override
  State<AppBarApp> createState() => _AppBarAppState();
}

class _AppBarAppState extends State<AppBarApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var _isDark = false;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
            flexibleSpace: Container(
              decoration:
                  BoxDecoration(gradient: GlobalVariables.appBarGradient),
            ),
            elevation: 10.0,
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
            // backgroundColor: GlobalVariables.selectedNavBarColor,
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
                        PopupMenuItem(
                            child: Text('Create New Group'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewGroupApp()));
                            }),
                        PopupMenuItem(
                          child: Text('Starred Messages'),
                        ),
                      ])
            ],
            bottom: TabBar(
              controller: _tabController,
              // style1
              indicatorColor: GlobalVariables.indicatorTabColor,
              // unselectedLabelColor: Colors.redAccent,
              // indicatorSize: TabBarIndicatorSize.tab,
              // indicator: BoxDecoration(
              //     // gradient: LinearGradient(
              //     //     colors: const [Colors.green, Colors.limeAccent]),
              //     borderRadius: BorderRadius.circular(50),
              //     color: Colors.redAccent),
              // style2
              // indicatorSize: TabBarIndicatorSize.tab,
              // indicator: BoxDecoration(
              //     borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(10),
              //         topRight: Radius.circular(10)),
              //     color: Colors.white),
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
      drawer: NavigationDrawerApp(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: GlobalVariables.floatingActionButtonColor,
        child: const Icon(Icons.send),
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
