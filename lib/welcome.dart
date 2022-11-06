import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Image.asset('assets/images/flutter.jpg'),
              const Text(
                'Let`s get started',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Never a better time than no to start.',
                style: TextStyle(color: Colors.black38),
              ),
              const SizedBox(
                height: 38,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all(Colors.black),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)))),
                    onPressed: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        'Create Account',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.blue),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)))),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
