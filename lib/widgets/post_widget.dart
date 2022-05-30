import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../post.dart';

class PostWidget extends StatefulWidget {
  final Post _post;
  PostWidget(this._post);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  TextStyle _textStyle = TextStyle(fontSize: 17);
  var iconsColor = Colors.pink[800];

  final listOfImages = [
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    'https://media.istockphoto.com/photos/picturesque-morning-in-plitvice-national-park-colorful-spring-scene-picture-id1093110112?k=20&m=1093110112&s=612x612&w=0&h=3OhKOpvzOSJgwThQmGhshfOnZTvMExZX2R91jNNStBY=',
    'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&w=1000&q=80',
    'https://media.istockphoto.com/photos/taj-mahal-mausoleum-in-agra-picture-id1146517111?k=20&m=1146517111&s=612x612&w=0&h=vHWfu6TE0R5rG6DJkV42Jxr49aEsLN0ML-ihvtim8kk=',
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _post();
  }

  Widget _post() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          _user(),
          _postDetails(),
          _bottomIcons(),
          //SizedBox(height: 10)
        ],
      ),
    );
  }

  Widget _user() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 5),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            widget._post.userProfilePicture,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          widget._post.userName,
          style: _textStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.watch_later_outlined,
              size: 20,
            ),
            SizedBox(width: 5),
            Text(
              '${widget._post.date}, ${widget._post.time}',
              style: _textStyle,
            ),
          ],
        ),
      ),
    );
  }

  // Widget _postDetails() {
  //   return Container(
  //     height: MediaQuery.of(context).size.height * 0.5,
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //           image: NetworkImage(widget._post.postPicture), fit: BoxFit.cover),
  //     ),
  //   );
  // }

  Widget _postDetails() {
    return CarouselSlider.builder(
      itemCount: listOfImages.length,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.5,
        viewportFraction: 1,
      ),
      itemBuilder: (context, index, realIndex) {
        final image = listOfImages[index];
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 1),
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget _dateAndTime() {
    return Container(
      width: 180,
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        horizontalTitleGap: 1,
        leading: Icon(
          Icons.calendar_today,
          size: 40,
          color: iconsColor,
        ),
        title: Text(
          widget._post.date,
          style: _textStyle,
        ),
        subtitle: Text(
          widget._post.time,
          style: _textStyle,
        ),
      ),
    );
  }

  Widget _address() {
    return Container(
      width: (MediaQuery.of(context).size.width - 40) * 0.5,
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 40,
            color: iconsColor,
          ),
          Flexible(
            child: Text(
              widget._post.place,
              style: _textStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _paying() {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.payments_outlined,
            size: 40,
            color: iconsColor,
          ),
          SizedBox(width: 5),
          Text(
            widget._post.paymentArrangement,
            style: _textStyle,
          ),
        ],
      ),
    );
  }

  Widget _bottomIcons() {
    String text = 'Voir détails';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _address(),
              _paying(),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.favorite_outline_rounded,
                size: 40,
                color: iconsColor,
              ),
              Text(
                text,
                style:
                    _textStyle.copyWith(decoration: TextDecoration.underline),
              ),
              Icon(
                Icons.messenger_outline_rounded,
                size: 40,
                color: iconsColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
