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
      //color: Colors.grey[300],
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: Container(
          //height: 10,
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
      //  Row(
      //   children: [
      //     Container(
      //       height: 50,
      //       clipBehavior: Clip.hardEdge,
      //       decoration: BoxDecoration(shape: BoxShape.circle),
      //       child: Image.asset(
      //         widget._post.userProfilePicture,
      //         fit: BoxFit.contain,
      //       ),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Text(
      //       widget._post.userName,
      //       style: _textStyle.copyWith(fontWeight: FontWeight.bold),
      //     )
      //   ],
      // ),
    );
  }

  Widget _postDetails() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: //AssetImage(widget._post.postPicture),
                NetworkImage(widget._post.postPicture),
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _dateAndTime() {
    return Container(
      //color: Colors.grey,
      width: 180,
      //height: 200,
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
    // Row(
    //   children:  [
    //     const Icon(
    //       Icons.calendar_today_rounded,
    //       size: 30,
    //     ),
    //     const SizedBox(width: 5),
    //     Column(
    //       children: [
    //         Text(
    //           'August 05, 2022',
    //           style: TextStyle(fontSize: 17),
    //         ),
    //       ],
    //     ),
    //   ],
    // );
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

    // ListTile(
    //   contentPadding: EdgeInsets.all(0),
    //   horizontalTitleGap: 0,
    //   leading:
    //       // Container(
    //       //   height: 40,
    //       //   width: 40,
    //       //   child: FittedBox(
    //       //     clipBehavior: Clip.hardEdge,
    //       //     fit: BoxFit.cover,
    //       //     child: Image.asset('assets/images/Group.png'),
    //       //   ),
    //       // ),
    //       Icon(
    //     Icons.location_on,
    //     size: 40,
    //     color: iconsColor,
    //   ),
    //   title: Text(
    //     widget._post.place,
    //     style: _textStyle,
    //   ),
    // );
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
      //height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //color: Colors.grey[200],

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
