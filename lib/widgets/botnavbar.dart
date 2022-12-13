import 'package:flutter/material.dart';

class BNB extends StatefulWidget {
  const BNB({Key? key}) : super(key: key);

  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {

  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var splash_color = Colors.redAccent;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            width: size.width,
            height: 80,
            child: Stack(
              children: [
                SizedBox(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.task_alt,
                          color: currentIndex == 0 ? Colors.orange : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setBottomBarIndex(0);
                        },
                        splashColor: splash_color,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.attach_money_outlined,
                          color: currentIndex == 1 ? Colors.orange : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setBottomBarIndex(1);
                        },
                        splashColor: splash_color,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.notes,
                          color: currentIndex == 2 ? Colors.orange : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setBottomBarIndex(2);
                        },
                        splashColor: splash_color,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.wordpress_sharp,
                          color: currentIndex == 3 ? Colors.orange : Colors.grey.shade400,
                        ),
                        onPressed: () {
                          setBottomBarIndex(3);
                        },
                        splashColor: splash_color,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.book_outlined,
                            color: currentIndex == 4 ? Colors.orange : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setBottomBarIndex(4);
                          },
                        splashColor: splash_color,
                          ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
