class Feed {
  String userName;
  String userImage;
  String userLocation;
  String postImage;
  int cmtCount;
  bool like;
  bool save;
  Feed(
      {this.userName,
      this.userImage,
      this.userLocation,
      this.postImage,
      this.cmtCount,
      this.like,
      this.save});
}

List<Feed> getFeed() {
  List<Feed> feedList = [];
  feedList.add(Feed(
    userName: 'Yunesh Shrestha',
    userImage:
        'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
    userLocation: 'Dharan',
    postImage:
        'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    cmtCount: 12,
    like: true,
    save: false,
  ));
  feedList.add(Feed(
    userName: 'Tester World',
    userImage:
        'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg',
    userLocation: 'Kathmandu',
    postImage:
        'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
    cmtCount: 12,
    like: false,
    save: false,
  ));
  feedList.add(Feed(
    userName: 'Calc hero',
    userImage:
        'https://cdn2.vectorstock.com/i/1000x1000/20/76/man-avatar-profile-vector-21372076.jpg',
    userLocation: 'Itahari',
    postImage:
        'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    cmtCount: 12,
    like: true,
    save: false,
  ));
  return feedList;
}
