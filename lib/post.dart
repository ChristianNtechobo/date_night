class Post {
  String userName;
  String userProfilePicture;
  String postPicture;
  String date;
  String time;
  String place;
  String paymentArrangement;

  Post(
    this.userName,
    this.userProfilePicture,
    this.postPicture,
    this.date,
    this.time,
    this.place,
    this.paymentArrangement,
  );
}

List<Post> postsList = [
  Post(
    'Jessica la blonde',
    'assets/images/profile/profile1.jpeg',
    //'assets/images/posts/2022.jpg',
    'https://www.plages.tv/gallery/plages/plage_5101321b8d42f.jpg',
    '15/06/22',
    '19:30',
    'Restaurant le poulet roti',
    'Not paying',
  ),
  Post(
    'Joyce Juicy',
    'assets/images/profile/profile2.jpeg',
    //'assets/images/posts/photo.png',
    'https://media-cdn.tripadvisor.com/media/photo-s/1a/b8/46/6d/london-stock.jpg',
    '20 Juin 2022',
    '20:30',
    'Restaurant APF C\'est doux',
    'Paying half',
  ),
  Post(
    'Marie la belle',
    'assets/images/profile/profile3.jpeg',
    //'assets/images/posts/picture.png',
    'https://www.bowling-niort-chauray.com/wp-content/uploads/2016/07/973810dce11d481df3d3eb115386ab4b_large-1.jpeg',
    'Quand vous voulez',
    '21:00',
    'Restaurant de Paris',
    'Not Paying',
  ),
  Post(
    'Francesca',
    'assets/images/profile/profile4.jpeg',
    //'assets/images/posts/Rectangle 541.png',
    'https://sf2.bibamagazine.fr/wp-content/uploads/biba/2020/06/une-shopping.png',
    '10 Juillet 2022',
    '13:00',
    'Plage bon vivre',
    'Paying half',
  ),
  Post(
    'Leticia',
    'assets/images/profile/profile5.jpeg',
    //'assets/images/posts/young.jpg',
    'https://static.wixstatic.com/media/80ddee_7e9d138c4b13426b907b6d841368e92a~mv2.png/v1/fill/w_1328,h_890,al_c/80ddee_7e9d138c4b13426b907b6d841368e92a~mv2.png',
    '17 Juillet 2022',
    '20:30',
    'Pizzeria l\'italienne',
    'Paying half',
  ),
];
