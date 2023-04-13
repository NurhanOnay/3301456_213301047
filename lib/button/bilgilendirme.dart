import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class animasyon extends StatelessWidget {
  const animasyon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

      splash: Column(
        children: [
        Image.network(
        "https://pbs.twimg.com/media/Di50xf8UwAEwHU2?format=jpg&name=large",
        height: 200,
      ),
      const Text("ERKEN TANI HAYAT KURTARIR ",
        style: TextStyle(
            color: Colors.red,
            fontFamily: "Mountain",
            fontSize: 20,
            fontWeight: FontWeight.w400),
      ),


        ],
    ),

    backgroundColor: Colors.white30,
    splashIconSize: 250,
    nextScreen: YoutubePlayerExample(),
    duration: 400,
    splashTransition: SplashTransition.rotationTransition,
    animationDuration: const Duration(
    seconds
    :
    10
    ),

    );
  }
}

class YoutubePlayerExample extends StatefulWidget {
  const YoutubePlayerExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _YoutubePlayerExampleState();
}

class _YoutubePlayerExampleState extends State<YoutubePlayerExample> {
  final videoURl = "https://youtu.be/bIZSrXXNwDU";
  late YoutubePlayerController kontrol;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURl);
    kontrol = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomInset: false, //sarı hatayı yok etmek için
      appBar: AppBar(
        title: Text("ÖNEMLİ"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          YoutubePlayer(
            controller: kontrol,
            showVideoProgressIndicator: true,
            onReady: () => debugPrint('Rady'),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: const ProgressBarColors(
                  playedColor: Colors.white,
                  handleColor: Colors.red,
                ),
              ),
              const PlaybackSpeedButton(),


            ],
          ),
        ],
      ),
    );
  }
}
