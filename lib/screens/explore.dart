import 'package:date_night/post.dart';
import 'package:date_night/widgets/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 10,
        title: Text(
          'Date Night',
          //style: TextStyle(fontSize: 12, color: Colors.black),
          style: GoogleFonts.greatVibes(
              fontSize: 50, color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: [for (var post in postsList) PostWidget(post)],
      ),
    );
  }
}
