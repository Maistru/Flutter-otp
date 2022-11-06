import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Image.asset('assets/images/flutter2.png'),
              const Text(
                'Registration',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Add your phone number. we`ll send you a verification code so we know yo`re real.',
                style: TextStyle(color: Colors.black38),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 38,
              ),
              Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefix: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            '(+62)',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.check_circle,
                          color: Colors.greenAccent,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
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
                      Navigator.of(context).pushNamed('otp');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        'Send',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //       style: ButtonStyle(
              //           foregroundColor: MaterialStateProperty.all(Colors.blue),
              //           backgroundColor:
              //               MaterialStateProperty.all(Colors.white),
              //           shape: MaterialStateProperty.all(RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(24)))),
              //       onPressed: () {},
              //       child: const Padding(
              //         padding: EdgeInsets.all(14.0),
              //         child: Text(
              //           'Login',
              //           style: TextStyle(fontSize: 16),
              //         ),
              //       )),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
