import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  void launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+964 771 953 8259',
      text: '+964 771 953 8259 Chat Iraqi',
    );
    await launch('$link');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "شات عراقية IQ",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'للتواصل مع فريق الدعم لتطبيق دردشة العراقي عى الواتس أب ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "whatsApp",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: launchWhatsApp,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                'assets/whats.png',
                              ))),
                        ),
                      ),
                      TextButton(
                        onPressed: launchWhatsApp,
                        child: Text(
                          '+964 771 953 8259',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                  child: TextButton(
                    onPressed: launchWhatsApp,
                    child: Container(
                      width: 100,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black, width: 1.5),
                        color: Colors.amber,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "تواصل معنا",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 250,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/logo.jpg',
                      ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
