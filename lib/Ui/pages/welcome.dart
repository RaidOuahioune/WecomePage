import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black, BlendMode.dst),
                    image: AssetImage("lib/assets/bgpic.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: Column(
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Wecome to this awesome login app\n                 You are awesome",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 154, 157, 139),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Get.width),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                primary: const Color(0xffF24636),
                              ),
                              onPressed: () {},
                              child: SizedBox(
                                width: Get.width / 3,
                                child: const Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              primary: const Color(0xff616161),
                            ),
                            onPressed: () {},
                            child: SizedBox(
                              width: Get.width / 3,
                              child: const Center(
                                child: Text(
                                  "Signup",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            onPrimary: Colors.white,
                            side: const BorderSide(width: 1, color: Colors.red),
                            shadowColor: Colors.transparent,
                            primary: Colors.transparent
                                .withOpacity(0.00000000000000000001)),
                        onPressed: () {},
                        child: SizedBox(
                          width: Get.width / 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: FaIcon(FontAwesomeIcons.google),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Continue with Google",
                                  style: TextStyle(fontSize: 13),
                                ),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
