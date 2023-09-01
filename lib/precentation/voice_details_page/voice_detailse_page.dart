import 'dart:async';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yoga/domain/voice/model/voice.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:yoga/precentation/widgets/button_widget.dart';

import '../payment/stripe_screen.dart';

// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

class VoiceDetailsePage extends StatefulWidget {
  final Datum voiceData;
  const VoiceDetailsePage({
    super.key,
    required this.voiceData,
  });

  @override
  State<VoiceDetailsePage> createState() => _VoiceDetailsePageState();
}

class _VoiceDetailsePageState extends State<VoiceDetailsePage> {
  String voiceDataUrl = "";

  final audioPlayer = AudioPlayer();
  bool isPlying = false;

  bool isLoading = false;

  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  late StreamSubscription<PlayerState> playerStateSubscription;
  late StreamSubscription<Duration> durationChangedSubscription;
  late StreamSubscription<Duration> positionChangedSubscription;

  @override
  void initState() {
    
      voiceDataUrl =
          "https://gurujisanjeevkrishna.com/${widget.voiceData.audio}";

      playerStateSubscription =
          audioPlayer.onPlayerStateChanged.listen((event) {
        setState(() {
          isPlying = event == PlayerState.playing;
        });
      });

      durationChangedSubscription =
          audioPlayer.onDurationChanged.listen((newDuration) {
        setState(() {
          duration = newDuration;
        });
      });

      positionChangedSubscription =
          audioPlayer.onPositionChanged.listen((newPosition) {
        setState(() {
          position = newPosition;
        });
      });
    

    super.initState();
  }

  @override
  void dispose() {
    playerStateSubscription.cancel();
    durationChangedSubscription.cancel();
    positionChangedSubscription.cancel();
    audioPlayer
        .dispose(); // Dispose the audio player when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.voiceData.audio.toString());
    return Scaffold(
      backgroundColor: const Color(0xff534252),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff534252),
              Color(0xffB8B1B9),
            ],
          ),
        ),
        child: SafeArea(
            child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(5),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      imageUrl:
                          "https://gurujisanjeevkrishna.com/${widget.voiceData.image}",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              widget.voiceData.title.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                    child: widget.voiceData.types == "Premium"
                        ? Column(
                            children: [
                              ButtonWidgets(
                                  title: "Buy",
                                  width: double.maxFinite,
                                  onPressed: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            StripePaymentScreen(
                                          amount: widget.voiceData.amount!,
                                        ),
                                      ),
                                      (route) => false,
                                    );
                                  })
                            ],
                          )
                        : Column(
                            children: [
                              buildSlider(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(formatTime(duration)),
                                    Text(formatTime(duration - position)),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  isLoading
                                      ? const SizedBox()
                                      : IconButton(
                                          color: Colors.white,
                                          onPressed: () async {
                                            const leftPosition =
                                                Duration(seconds: 10);
                                            await audioPlayer
                                                .seek(position - leftPosition);
                                            await audioPlayer.resume();
                                          },
                                          icon: const RotatedBox(
                                            quarterTurns: 2,
                                            child: Icon(
                                              Icons.play_arrow,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ),
                                        ),
                                  const SizedBox(width: 10),
                                  isLoading
                                      ? SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: CircularProgressIndicator(
                                            backgroundColor:
                                                Colors.white.withOpacity(0.3),
                                            color: Colors.white,
                                          ),
                                        )
                                      : IconButton(
                                          color: Colors.white,
                                          onPressed: () async {
                                            if (isPlying) {
                                              await audioPlayer.pause();
                                            } else {
                                              setState(() {
                                                isLoading = true;
                                              });

                                              audioPlayer
                                                  .setSourceUrl(voiceDataUrl)
                                                  .then((value) async {
                                                await audioPlayer.resume();
                                                setState(() {
                                                  isLoading = false;
                                                });
                                              });
                                            }
                                          },
                                          icon: Icon(
                                            isPlying
                                                ? Icons.pause
                                                : Icons.play_arrow,
                                          ),
                                        ),
                                  const SizedBox(width: 10),
                                  isLoading
                                      ? const SizedBox()
                                      : IconButton(
                                          color: Colors.white,
                                          onPressed: () async {
                                            const rightPosition =
                                                Duration(seconds: 10);
                                            await audioPlayer
                                                .seek(position + rightPosition);
                                            await audioPlayer.resume();
                                          },
                                          icon: const Icon(
                                            Icons.play_arrow,
                                            textDirection: TextDirection.ltr,
                                          ),
                                        ),
                                ],
                              )
                            ],
                          )),
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget buildSlider() => Slider(
        inactiveColor: Colors.white.withOpacity(0.3),
        thumbColor: Colors.white,
        activeColor: Colors.white,
        min: 0,
        max: duration.inSeconds.toDouble(),
        value: position.inSeconds.toDouble(),
        onChanged: (value) async {
          final position = Duration(seconds: value.toInt());
          await audioPlayer.seek(position);
          await audioPlayer.resume();
        },
      );
}

// class VoicePlayerWidget extends StatefulWidget {
//   const VoicePlayerWidget({super.key});

//   @override
//   State<VoicePlayerWidget> createState() => _VoicePlayerWidgetState();
// }

// class _VoicePlayerWidgetState extends State<VoicePlayerWidget> {
//   AudioPlayer audioPlayer = AudioPlayer();
//   PlayerState playerState = PlayerState.STOPPED;

//   @override
//   void dispose() {
//     audioPlayer
//         .dispose(); // Dispose the audio player when the widget is disposed
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ElevatedButton(
//           onPressed: () {
//             if (playerState == PlayerState.STOPPED) {
//               _playAudio();
//             } else if (playerState == PlayerState.PLAYING) {
//               _pauseAudio();
//             } else if (playerState == PlayerState.PAUSED) {
//               _resumeAudio();
//             }
//           },
//           child: Text(
//             _getButtonText(),
//           ),
//         ),
//       ],
//     );
//   }

//   String _getButtonText() {
//     if (playerState == PlayerState.STOPPED) {
//       return 'Play';
//     } else if (playerState == PlayerState.PLAYING) {
//       return 'Pause';
//     } else if (playerState == PlayerState.PAUSED) {
//       return 'Resume';
//     } else {
//       return 'Unknown';
//     }
//   }

//   void _playAudio() {
//     String audioUrl =
//         'https://gurujisanjeevkrishna.com/public/voice/sky-wisdome/20230514_645ff0490b35d.mp3';

//     audioPlayer.play(audioUrl, isLocal: false);
//     setState(() {
//       playerState = PlayerState.PLAYING;
//     });
//   }

//   void _pauseAudio() {
//     audioPlayer.pause();
//     setState(() {
//       playerState = PlayerState.PAUSED;
//     });
//   }

//   void _resumeAudio() {
//     audioPlayer.resume();
//     setState(() {
//       playerState = PlayerState.PLAYING;
//     });
//   }
// }

// enum PlayerState { STOPPED, PLAYING, PAUSED }
