import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  void launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+963996664182',
       text: 'للتواصل مع الشركة 963996664182+',
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
                  child: Text('تقدم لكم شركة مستر روبوت خدمات في تكنولوجيا المعلومات من تطوير المواقع الإلكترونية  وتطوير التطبيقات للهواتف الذكية التي تدعم جميع الأنظمة والعديد من الخدمات الأخرى',
                    style:TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
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
                        style:TextStyle(

                          fontSize: 15,
                          color:Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: launchWhatsApp,
                        child: Container(
                          width: 40.0,
                          height:40.0,
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
                          '+963 99 666 4182',
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
                        border: Border.all(
                            color: Colors.black, width: 1.5),
                        color: Colors.amber,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "تواصل معنا",
                          style: TextStyle(

                            fontSize: 20,
                            color:Colors.black,
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
