import 'package:rive/rive.dart';

class RiveAsset {
  final String artBoard, stateMachineName, title, src;
  late SMIBool? input;

  RiveAsset(this.src,
      {required this.artBoard,
      required this.stateMachineName,
      required this.title,
      this.input});

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> drawerNav = [
  RiveAsset(
    'assets/RiveAssets/icons.riv',
    artBoard: 'HOME',
    stateMachineName: 'HOME_interactivity',
    title: 'Home',
  ),
  RiveAsset(
    'assets/RiveAssets/icons.riv',
    artBoard: 'USER',
    stateMachineName: 'USER_Interactivity',
    title: 'About',
  ),
  RiveAsset(
    'assets/RiveAssets/icons.riv',
    artBoard: 'LIKE/STAR',
    stateMachineName: 'STAR_Interactivity',
    title: 'Projects',
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artBoard: "SETTINGS",
    stateMachineName: "SETTINGS_Interactivity",
    title: "Resume",
  ),
   RiveAsset(
    "assets/RiveAssets/icons.riv",
    artBoard: "CHAT",
    stateMachineName: "CHAT_Interactivity",
    title: "Contact",
  ),
];
/*
List<RiveAsset> sideMenu = [
  RiveAsset(
    'assets/RiveAssets/icons.riv',
    artBoard: 'HOME',
    stateMachineName: 'HOME_interactivity',
    title: 'Home',
  ),
  RiveAsset(
    'assets/RiveAssets/icons.riv',
    artBoard: 'USER',
    stateMachineName: 'USER_Interactivity',
    title: 'About',
  ),
  RiveAsset(
    'assets/RiveAssets/icons.riv',
    artBoard: 'LIKE/STAR',
    stateMachineName: 'STAR_Interactivity',
    title: 'Projects',
  ),
  RiveAsset(
    "assets/RiveAssets/icons.riv",
    artBoard: "SETTINGS",
    stateMachineName: "SETTINGS_Interactivity",
    title: "Resume",
  ),
   RiveAsset(
    "assets/RiveAssets/icons.riv",
    artBoard: "CHAT",
    stateMachineName: "CHAT_Interactivity",
    title: "Contact",
  ),
];

List<RiveAsset> sideMenu2 = [
  RiveAsset("assets/RiveAssets/icons.riv",
      artBoard: "TIMER",
      stateMachineName: "TIMER_Interactivity",
      title: "Timer"),
  RiveAsset("assets/RiveAssets/icons.riv",
      artBoard: "BELL",
      stateMachineName: "BELL_Interactivity",
      title: "Notification"),
]; */