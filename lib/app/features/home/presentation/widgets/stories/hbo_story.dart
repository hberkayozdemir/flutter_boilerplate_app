import 'dart:math';

import 'package:advstory/advstory.dart';
import 'package:flutter/material.dart';
import 'package:hbosoftware/config/story_config.dart';
import 'package:hbosoftware/core/theme/hbo_theme.dart';

class HboStory extends StatefulWidget {
  const HboStory({
    required this.isHorizontal,
    Key? key,
    required this.title,
  }) : super(key: key);

  final bool isHorizontal;
  final String title;

  @override
  State<HboStory> createState() => _HboStoryState();
}

class _HboStoryState extends State<HboStory> {
  double _width = 75;
  double _height = 75;
  double _radius = 40;
  double _strokeWidth = 2;
  double _gapSize = 3;
  bool _showUserNames = false;

  final _defaultBorderColors = [
    const Color(0xaf405de6),
    const Color(0xaf5851db),
    const Color(0xaf833ab4),
    const Color(0xafc13584),
    const Color(0xafe1306c),
    const Color(0xaffd1d1d),
    const Color(0xaf405de6),
  ];
  late List<Color> _selectedColors = _defaultBorderColors;

  double _lerp = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.isHorizontal ? _height + 40 : double.maxFinite,
      width: widget.isHorizontal ? double.maxFinite : _width + 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 14,
                      color: HboTheme.c!.text,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: AdvStory(
              storyCount: storyTitles.length,
              storyBuilder: (index) async {
                return Story(
                  contentCount: storyImages.length,
                  contentBuilder: (contentIndex) =>
                      ImageContent(url: storyImages[contentIndex]),
                  header: StoryHeader(
                    url: storyMainPicture[index],
                    text: storyTitles[index],
                  ),
                );
              },
              style: AdvStoryStyle(
                trayListStyle: TrayListStyle(
                  direction:
                      widget.isHorizontal ? Axis.horizontal : Axis.vertical,
                ),
              ),
              trayBuilder: (index) {
                return AdvStoryTray(
                  url: storyMainPicture[index],
                  size: Size(_width, _height),
                  shape: BoxShape.rectangle,
                  borderRadius: index % 2 == 0 ? _radius : _radius / 2,
                  borderGradientColors: _selectedColors,
                  strokeWidth: _strokeWidth,
                  gapSize: _gapSize,
                  username: _showUserNames
                      ? Text(
                          storyTitles[index],
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                          ),
                        )
                      : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _controls() {
    return StatefulBuilder(builder: (context, setModalState) {
      void set(VoidCallback callback) {
        setModalState(callback);
        setState(callback);
      }

      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Show user names"),
                  const SizedBox(width: 5),
                  Checkbox(
                    checkColor: Colors.white,
                    value: _showUserNames,
                    onChanged: (bool? value) {
                      set(() {
                        _showUserNames = !_showUserNames;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          _buildSlider(
            title: "Width: ",
            value: _width,
            min: 35,
            onChanged: (double value) {
              set(() {
                _width = value;
              });
            },
          ),
          _buildSlider(
            title: "Height: ",
            value: _height,
            min: 35,
            onChanged: (double value) {
              set(() {
                _height = value;
              });
            },
          ),
          _buildSlider(
            title: "Radius: ",
            value: _radius,
            min: 0,
            onChanged: (double value) {
              set(() {
                _radius = value;
              });
            },
          ),
          _buildSlider(
            title: "Gap size: ",
            value: _gapSize * 10,
            min: 0,
            onChanged: (double value) {
              set(() {
                _gapSize = value / 10;
              });
            },
          ),
          _buildSlider(
            title: "Stroke width: ",
            value: _strokeWidth * 10,
            min: 0,
            onChanged: (double value) {
              set(() {
                _strokeWidth = value / 10;
              });
            },
          ),
          _buildSlider(
            title: "Border gradient: ",
            value: _lerp,
            min: 0,
            onChanged: (double value) {
              final newColors = <Color>[];

              for (int i = 0; i < _defaultBorderColors.length; i++) {
                var rnd = Random();
                var r = rnd.nextInt(16) * 16;
                var g = rnd.nextInt(16) * 16;
                var b = rnd.nextInt(16) * 16;

                newColors.add(Color.fromARGB(255, r, g, b));
              }

              set(() {
                _selectedColors = newColors;
                _lerp = value;
              });
            },
          ),
        ],
      );
    });
  }

  Widget _buildSlider({
    required String title,
    required double value,
    required ValueChanged<double> onChanged,
    required double min,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Text(title),
          const SizedBox(width: 5),
          Expanded(
            child: Slider(
              value: value,
              max: 200,
              min: min,
              label: value.round().toString(),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
