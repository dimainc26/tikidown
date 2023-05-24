import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tikidown/pages/premium_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff7577CC), Color(0xff4E4E74)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 230),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                    child: Row(children: [
                      Container(
                          width: 40,
                          height: 40,
                          margin: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey, width: 2)),
                          child: IconButton(
                              onPressed: () {
                                Get.to(
                                    transition: Transition.rightToLeft,
                                    () => const Ads());
                              },
                              icon: const Icon(
                                Icons.menu,
                                size: 22,
                                color: Colors.grey,
                              ))),
                      const Text(
                        "Go Premium",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 16),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  height: Get.height / 3.5,
                  child: Center(
                    child: Image.asset("./imgs/logo.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Text(
                    "Download any TikTok Video",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                  width: Get.width - 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Paste URL Here",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0xff9493A5),
                        ),
                        suffixIcon: Icon(
                          Icons.paste,
                          color: Color(0xff9493A5),
                        )),
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  width: Get.width - 40,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}