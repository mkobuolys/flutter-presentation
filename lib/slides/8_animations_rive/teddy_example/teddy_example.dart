import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'signin_button.dart';
import 'teddy_controller.dart';
import 'tracking_text_input.dart';

class TeddyExample extends StatefulWidget {
  const TeddyExample();

  @override
  _TeddyExampleState createState() => _TeddyExampleState();
}

class _TeddyExampleState extends State<TeddyExample> {
  late TeddyController _teddyController;

  @override
  void initState() {
    super.initState();
    _teddyController = TeddyController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(93, 142, 155, 1.0),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.0, 1.0],
                  colors: [
                    Color.fromRGBO(170, 207, 211, 1.0),
                    Color.fromRGBO(93, 142, 155, 1.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 50.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 200,
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: FlareActor(
                      'assets/flare/Teddy.flr',
                      shouldClip: false,
                      alignment: Alignment.bottomCenter,
                      controller: _teddyController,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TrackingTextInput(
                              label: 'Email',
                              hint: "What's your email address?",
                              onCaretMoved: (Offset? caret) {
                                _teddyController.lookAt(caret);
                              },
                            ),
                            TrackingTextInput(
                              label: 'Password',
                              hint: "Try 'bears'...",
                              isObscured: true,
                              onCaretMoved: (Offset? caret) {
                                _teddyController.coverEyes(
                                  shoudCoverEyes: caret != null,
                                );
                                _teddyController.lookAt(null);
                              },
                              onTextChanged: (String value) {
                                _teddyController.setPassword(value);
                              },
                            ),
                            SigninButton(
                              onPressed: () {
                                _teddyController.submitPassword();
                              },
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
