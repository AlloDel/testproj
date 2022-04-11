import 'package:flutter/material.dart';
import 'package:testproj/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: brandName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double myAppBarHeight = size.height * 0.20;

    return Scaffold(
      appBar: customAppbar(myAppBarHeight),
      body: Stack(
        // mainAxisSize: MainAxisSize.min,
        fit: StackFit.expand,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                detailTab(tileName, dummyAuthor),
                SizedBox(
                  width: size.width,
                  height: size.height * 1.3,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return rowTab(tileName, dummyAuthor);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.height * 0.85,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return rowTile(tileName, dummyAuthor, dummyTime);
                }),
          ),

          eventCard(),
          imageTab(tileName, dummyTime, dummyAuthor),
          SizedBox(
            width: size.width,
            height: size.height * 0.85,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return rowTile(tileName, dummyAuthor, dummyTime);
                }),
          ),
          //////////
          dataIntake(),
          //////////
          SizedBox(
            width: size.width,
            height: size.height * 0.85,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return rowTile(tileName, dummyAuthor, dummyTime);
                }),
          ),
          imageTab(tileName, dummyTime, dummyAuthor),
          SizedBox(
            width: size.width,
            height: size.height * 0.85,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return rowTile(tileName, dummyAuthor, dummyTime);
                }),
          ),
          bottomTab(),
        ],
      ),
    );
  }

  Widget bottomTab() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple, Colors.purpleAccent]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              brandName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Lorem Ipsum dolor sit amet cosectetur adipiscing elit sed do eiusmod tempor incsh jsdg hjsd aliqua",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 54,
            ),
            SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Connect with us."),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.call)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.call)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.call)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.call)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 54,
            ),
            SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Prodigee technologies 2022"),
                  Text("All rights reserved. Privacy & Terms"),
                ],
              ),
            ),
            const SizedBox(
              height: 54,
            ),
          ],
        ),
      ),
    );
  }

  Widget dataIntake() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple, Colors.purpleAccent]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Get updated with the best news about events in your inbox",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,

                hintText: "Your name",
                // hintStyle: ,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Your email address",
                // hintStyle: ,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.blue),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Subscribe",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageTab(tilename, time, author) {
    return Card(
      elevation: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple, Colors.purpleAccent]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tilename,
                    style: const TextStyle(color: Colors.purple, fontSize: 12),
                  ),
                  const Text(
                    "Lorem Ipsum dolor sit amet",
                    style: TextStyle(color: Colors.purple, fontSize: 14),
                  ),
                  Text(
                    author + " " + time + " 3 comments",
                    style: const TextStyle(color: Colors.purple, fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/designt.jpg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }

  Widget eventCard() {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.purple,
          width: 4,
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text("EVENTS YOU NEED TO ATTEND"),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/designt.jpg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              const Text(
                "THE EVENT NAME",
                style: TextStyle(color: Colors.purple, fontSize: 16),
              ),
              const Text(
                "APRIL 1",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Accra, Ghana",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              InkWell(
                child: Container(
                  height: size.height * 0.1,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors:
                            // selectColor(),
                            [Colors.purple, Colors.purpleAccent]),
                  ),
                  child: const Center(
                    child: Text(
                      "ACCESS EVENT",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget detailTab(tilename, author) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/designt.jpg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          Text(tilename),
          const Text(
              "Lorem Ipsum dolor sit amet cosectetur adipiscing elit sed do eiusmod"),
          Text(author),
        ],
      ),
    );
  }

  Widget rowTab(tilename, author) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/designt.jpg'),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.rectangle,
          ),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(tilename),
            Text(tilename),
          ],
        ),
        subtitle: Text(author),
      ),
    );
  }

  Widget rowTile(tilename, time, author) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/designt.jpg'),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.rectangle,
          ),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(tilename),
            Text(tilename),
          ],
        ),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(author),
            Text(time),
          ],
        ),
      ),
    );
  }

  PreferredSize customAppbar(myAppBarHeight) {
    return PreferredSize(
      preferredSize: Size.fromHeight(myAppBarHeight),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter, end: Alignment.bottomCenter, colors:
                  // selectColor(),
                  [Colors.purple, Colors.purpleAccent]),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              elevation: 0,
              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    // open drawer
                  },
                );
              }),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.dark_mode_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_outline),
                )
              ],
            ),
            const Center(
              child: Text(brandName),
            )
          ],
        ),
      ),
    );
  }
}
