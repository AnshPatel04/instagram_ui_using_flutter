
//home screen
import 'dart:ui';

var forStory =
[
  {
    'userId': 'Your story',
    'userPic': logdeinUser[0]['userPic'],
    'haveStory': logdeinUser[0]['haveStory'],
  },
  {
    'userId': 'kashyap_994',
    'userPic': 'assets/images/valorant1.jpg',
    'story': 'assets/images/gojo-post.jpg',
    'haveStory': true,
  },
  {
    'userId': 'dharmik_patel',
    'userPic': 'assets/images/pattinson-removebg-preview.png',
    'story': 'assets/images/rdj.jpg',
    'haveStory': true,
  },
  {
    'userId': 'jenillkapuriya',
    'userPic': 'assets/images/John-Wick-removebg-preview.png',
    'story': 'assets/images/Tripti1.jpg',
    'haveStory': false,
  },
  {
    'userId': 'gauravlakkad',
    'userPic': 'assets/images/cillianMurphy.jpg',
    'story': 'assets/images/valorant1.jpg',
    'haveStory': false,
  },
];

////////////////

dynamic postOfFollowing = [
  // {
  //   'userId': 'jenil',
  //   'userPic': 'assets/images/batman-post.jpg',
  //   'haveStory': true,
  //   'post': 'assets/images/Picsart_24-01-31_21-37-59-246-imageonline.co-merged.jpg.png',
  //   'isLiked': true,
  //   'like': 41130,
  //   'caption': "And Yet...I'm Still Here",
  //   'comment': 35128,
  //   'timeOfPosting': 1,
  // },
  {
    'userId': 'dharmik_patel',
    'userPic': 'assets/images/pattinson-removebg-preview.png',
    'haveStory': true,
    'post': 'assets/images/batman-post.jpg',
    'isLiked': true,
    'like': 41130,
    'caption': "And Yet...I'm Still Here",
    'comment': 35128,
    'timeOfPosting': 1,
  },
  {
    'userId': 'kashyap_994',
    'userPic': 'assets/images/valorant1.jpg',
    'haveStory': true,
    'post': 'assets/images/JW-post.jpg',
    'isLiked': false,
    'like': 20128,
    'caption': "Do I Look Civilized To You?",
    'comment': 10036,
    'timeOfPosting': 2,
  },
  {
    'userId': '2510dev_',
    'userPic': 'assets/images/monkey-luffy.jpg',
    'haveStory': false,
    'post': 'assets/images/gojo-post.jpg',
    'isLiked': true,
    'like': 10023,
    // 'caption': 'You cryin\'?',
    'comment': 3012,
    'timeOfPosting': 2,
    'caption': 'We Can’t Have Him Becoming SkullGreymon...',
  },
  {
    'userId': 'jenillkapuriya',
    'userPic': 'assets/images/John-Wick-removebg-preview.png',
    'haveStory': false,
    'post': 'assets/images/got.jpg',
    'isLiked': false,
    'like': 41130,
    'caption': "And Yet...I'm Still Here",
    'comment': 35128,
    'timeOfPosting': 1,
  },
];

//search screen
var posts = [
  {
    1: 'assets/images/John-Wick.jpg',
    1.1:'assets/images/John-Wick-removebg-preview.png',
    1.2: 'john.wick',
    1.3: false,
    2: 'assets/images/pattinson.jpg',
    2.1: 'assets/images/Batman.jpg',
    2.2: 'batman.world',
    2.3: false,
    3: 'assets/images/Tripti1.jpg',
    3.1:'assets/images/tripti2.jpg',
    3.2:'triptii.dimri',
    3.3: false,
    4: 'assets/images/evans.jpg',
    4.1: 'assets/images/cap.jpg',
    4.2:'evanssss',
    4.3: false,
    5: 'assets/images/animal1.jpg',
    5.1:'assets/images/Animal-in.jpg',
    5.2:'animal.world',
    5.3: false,
  },
  {
    1: 'assets/images/jett-valorant.jpg',
    1.1:'assets/images/valorantLogo.png',
    1.2: 'valorant',
    1.3: false,
    2: 'assets/images/rdj.jpg',
    2.1: 'assets/images/robertdowneyjr.png',
    2.2: 'robert.jr',
    2.3: false,
    3: 'assets/images/God-of-War.jpg',
    3.1:'assets/images/gow.jpg',
    3.2:'gow',
    3.3: false,
    4: 'assets/images/Batman.jpg',
    4.1: 'assets/images/Batman.jpg',
    4.2: 'batman.world',
    4.3: false,
    5: 'assets/images/valorant1.jpg',
    5.1:'assets/images/valorantLogo.png',
    5.2: 'valorant',
    5.3: false,
  },
  {
    1: 'assets/images/tripti2.jpg',
    1.1:'assets/images/tripti2.jpg',
    1.2:'triptii.dimri',
    1.3: false,
    2: 'assets/images/pattinson.jpg',
    2.1: 'assets/images/Batman.jpg',
    2.2: 'batman.world',
    2.3: false,
    3: 'assets/images/cillian-murphy.jpg',
    3.1: 'assets/images/cillianMurphy.jpg',
    3.2: 'cillian.murphy',
    3.3: false,
    4: 'assets/images/evans.jpg',
    4.1: 'assets/images/cap.jpg',
    4.2:'evanssss',
    4.3: false,
    5: 'assets/images/Tripti1.jpg',
    5.1:'assets/images/tripti2.jpg',
    5.2:'triptii.dimri',
    5.3: false,
  },

];

//chat-box
var details = [
  {
    'uname': '🅺🅰🆂🅷🆈🅰🅿',
    'subTitle': 'Reacted 😂 to your ...2m',
    'pendingMSG': true,
    'story': false,
    'DP': 'assets/images/rdj-removebg-preview.png'
  },
  {
    'uname': 'Dharmik',
    'subTitle': 'Sent 6m ago',
    'pendingMSG': false,
    'story': false,
    'DP': 'assets/images/pattinson-removebg-preview.png'
  },
  {
    'uname': 'Kashyap Rathod',
    'subTitle': '2 new messages...40m',
    'pendingMSG': true,
    'story': false,
    'DP': 'assets/images/John-Wick-removebg-preview.png'
  },
  {
    'uname': '˙✧˖°📷 ⋆｡˚꩜',
    'subTitle': 'Sent a reel by gangs...3h',
    'pendingMSG': true,
    'story': false,
    'DP': 'assets/images/rdj-removebg-preview.png'
  },
  {
    'uname': 'Hepy',
    'subTitle': 'Seen 4h ago',
    'pendingMSG': false,
    'story': false,
    'DP': 'assets/images/pattinson-removebg-preview.png'
  },
  {
    'uname': '🔰Éternal Fríeñds',
    'subTitle': 'Seen by Gaurav Lak+...',
    'pendingMSG': false,
    'story': false,
    'DP': 'assets/images/friends.jpg'
  },
  {
    'uname': 'jenillkapuriya',
    'subTitle': 'Sent a GIF...20h',
    'pendingMSG': false,
    'story': false,
    'DP': 'assets/images/John-Wick-removebg-preview.png'
  },
  {
    'uname': 'Krish Bhayani',
    'subTitle': 'Thank you Bhai✨🥂.21h',
    'pendingMSG': false,
    'story': true,
    'DP': 'assets/images/rdj-removebg-preview.png'
  },
  {
    'uname': 'Yash Barochiya',
    'subTitle': 'Thank you Bhai✨🥂.21h',
    'pendingMSG': false,
    'story': false,
    'DP': 'assets/images/pattinson-removebg-preview.png'
  }
  ,
  {
    'uname': 'Yash Barochiya',
    'subTitle': 'Thank you Bhai✨🥂.21h',
    'pendingMSG': true,
    'story': false,
    'DP': 'assets/images/pattinson-removebg-preview.png'
  }

];

//profile


var logdeinUser = [
  {
    'userId': 'ansh_padalia',
    'userPic': 'assets/images/gojo-post.jpg',
    'post': usersPost.length,
    'follower': 325,
    'following': 272,
    'userName': 'ANSh',
    'bio': 'Glorious Purpose 💚',
    'haveStory': false,
  }
  ];
//
var highlight = [

  {
    'highlightId': 'Trip✨',
    'highlight': 'assets/images/pattinson.jpg',
    'highlightPic': 'assets/images/pattinson-removebg-preview.png',
  },
  {
    'highlightId': '🎬 cinema 🎥',
    'highlight': 'assets/images/batman-post.jpg',
    'highlightPic': 'assets/images/batman-post.jpg',
  },
  {
    'highlightId': 'clg dairies 🎓',
    'highlight': 'assets/images/cillianMurphy.jpg',
    'highlightPic': 'assets/images/got.jpg',
  },
];
//
// var usersPost = [
//   'assets/images/monkey-luffy.jpg',
//   'assets/images/jett-valorant.jpg',
//   'assets/images/cillian-murphy.jpg',
//   'assets/images/valorantLogo.png',
//   'assets/images/gow.jpg',
//   'assets/images/got.jpg',
//   'assets/images/JW-post.jpg',
//
// ];
var usersPost = [
  {
    'post': 'assets/images/monkey-luffy.jpg',
    'isLiked': false,
  },
  {
    'post': 'assets/images/jett-valorant.jpg',
    'isLiked': false,
  },
  {
    'post': 'assets/images/cillian-murphy.jpg',
    'isLiked': false,
  },
  {
    'post': 'assets/images/valorantLogo.png',
    'isLiked': false,
  },
  {
    'post': 'assets/images/gow.jpg',
    'isLiked': false,
  },
  {
    'post': 'assets/images/got.jpg',
    'isLiked': false,
  },
  {
    'post': 'assets/images/JW-post.jpg',
    'isLiked': false,
  },
];

var reeLPost = [
  {
    'userId': 'dharmik_patel',
    'userPic': 'assets/images/pattinson-removebg-preview.png',
    'post': 'assets/images/batman-post.jpg',
    'isLiked': true,
    'caption': "And Yet...I'm Still Here",
  },
  {
    'userId': 'kashyap_994',
    'userPic': 'assets/images/valorant1.jpg',
    'post': 'assets/images/JW-post.jpg',
    'isLiked': false,
    'caption': "Do I Look Civilized To You?",
  },
  {
    'userId': '2510dev_',
    'userPic': 'assets/images/monkey-luffy.jpg',
    'post': 'assets/images/gojo-post.jpg',
    'isLiked': true,
    'caption': 'You cryin\'?',
  },
  {
    'userId': 'jenillkapuriya',
    'userPic': 'assets/images/John-Wick-removebg-preview.png',
    'post': 'assets/images/got.jpg',
    'isLiked': false,
    'caption': "And Yet...I'm Still Here",

  },
];


var photos = [

  'assets/images/monkey-luffy.jpg',
  'assets/images/jett-valorant.jpg',
  'assets/images/cillian-murphy.jpg',
  'assets/images/valorantLogo.png',
  'assets/images/gow.jpg',
  'assets/images/got.jpg',
  'assets/images/JW-post.jpg',


  'assets/images/monkey-luffy.jpg',
  'assets/images/jett-valorant.jpg',
  'assets/images/cillian-murphy.jpg',
  'assets/images/valorantLogo.png',
  'assets/images/gow.jpg',
  'assets/images/got.jpg',
  'assets/images/JW-post.jpg',

  'assets/images/monkey-luffy.jpg',
  'assets/images/jett-valorant.jpg',
  'assets/images/cillian-murphy.jpg',
  'assets/images/valorantLogo.png',
  'assets/images/gow.jpg',
  'assets/images/got.jpg',
  'assets/images/JW-post.jpg',


];
