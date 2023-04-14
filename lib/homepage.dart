// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, 100),
        child: Card(
          child: TabBar(
            unselectedLabelColor: Colors.grey[900],
            labelColor: Colors.purple[800],
            indicatorColor: Colors.purple[800],
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            tabs: const [
              Tab(child: Text('Suggestions')),
              Tab(child: Text('Notifications')),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.separated(
              itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.file_copy_rounded),
                          const SizedBox(
                            width: 100,
                          ),
                          Text(
                            files[index],
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          const Icon(Icons.more_vert),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 150,
                        width: 350,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(4, 4)),
                        ),
                        child: const Center(
                            child: Text(
                          "File",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 30, right: 10),
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(5, 5))),
                              child: const Icon(Icons.person_outline,
                                  color: Colors.white),
                            ),
                            const Text("Edited in the past month"),
                          ],
                        ),
                      ),
                      const Divider(color: Colors.grey),
                    ],
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: files.length),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/notification.png"),
              const Text(
                "No new notifications",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Notifications about activity on your files and"),
              const Text("folders will show up here"),
            ],
          ),
        ],
      ),
    );
  }
}
