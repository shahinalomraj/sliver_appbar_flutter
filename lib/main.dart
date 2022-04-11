import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.purple,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("I Love Flutter"),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([
              addDetails("One", "This is one"),
              addDetails("Two", "This is two"),
              addDetails("Three", "This is three"),
              addDetails("Four", "This is four"),
              addDetails("Five", "This is five"),
              addDetails("Six", "This is six"),
              addDetails("Seven", "This is seven"),
              addDetails("Eight", "This is eight"),
              addDetails("Nine", "This is nine"),
              addDetails("Ten", "This is ten"),
              addDetails("Eleven", "This is eleven"),
              addDetails("Twoelve", "This is twoelve"),
              addDetails("Tharteen", "This is tharteen"),
            ]))

          ],
        ),
      ),
    );
  }
}
Widget addDetails(
String name,
String description,
) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}