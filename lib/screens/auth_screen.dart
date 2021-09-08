import 'package:flutter/material.dart';
import 'package:qnb/screens/home_screen.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = "/auth";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: InkWell(
        onTap: () => FocusScope.of(context).unfocus(), 
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xff7b104a),
              Color(0xff522052),
              // Color(0xff312651),
              Color(0xff21284e)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: CustomPaint(
                      painter: CurvePainter(),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 180, child: Image.asset("assets/logo.png"))),
                  ),
                ]),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AuthTextField(
                            label: "Username",
                            suffixIcon: Icon(null),
                          ),
                          SizedBox(height: 15),
                          AuthTextField(
                            label: "Password",
                            suffixIcon: Icon(Icons.visibility_off_rounded),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  // width: 200,
                                  height: 50,
                                  margin: EdgeInsets.fromLTRB(0, 20, 8, 20),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(HomeScreen.routeName);
                                    },
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      primary: Color(0xff84004f),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff84004f)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.fingerprint,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Forgot your password or username?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Sign up for the first time?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class AuthTextField extends StatelessWidget {
  final String label;
  final Icon suffixIcon;
  AuthTextField({required this.suffixIcon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        cursorHeight: 22,
        decoration: InputDecoration(
            labelText: label,
            alignLabelWithHint: true,
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            suffixIcon: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: GestureDetector(
                child: suffixIcon,
              ),
            )),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * .8);
    path.quadraticBezierTo(size.width / 2, size.height + 30, size.width, 100);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
