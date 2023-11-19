import 'package:flutter/material.dart';

class PlaylistLatihanCard extends StatefulWidget {
  final int latihanNum;
  final void Function() press;

  const PlaylistLatihanCard({
    Key? key,
    required this.latihanNum,
    required this.press,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PlaylistLatihanCard createState() => _PlaylistLatihanCard();
}

class _PlaylistLatihanCard extends State<PlaylistLatihanCard> {
  bool isDone = false;
  bool isPlayed = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return PhysicalModel(
        color: Colors.transparent,
        elevation: 5,
        shadowColor: const Color.fromARGB(255, 50, 124, 0),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: constraints.maxWidth / 1 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                setState(() {
                  isPlayed = !isPlayed;
                });
                widget.press();
              },
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 31,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isPlayed ? Icons.play_arrow : Icons.play_arrow_outlined,
                        color: isPlayed
                            ? Color.fromARGB(255, 50, 124, 0)
                            : Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Latihan ${widget.latihanNum}",
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FittedBox(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isDone = !isDone;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 31,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: BoxShape.circle),
                          child: Icon(
                            isDone
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: isDone
                                ? const Color.fromARGB(255, 50, 124, 0)
                                : Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
