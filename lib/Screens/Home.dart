import 'package:chatiraqi/Screens/View.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String link = "";

  @override
  void initState() {
    //  getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Text(
              "المواقع المتوفرة حاليا",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: (link != "" && link != null)
                    ? FirebaseFirestore.instance.collection('column')
                    .snapshots()
                    : FirebaseFirestore.instance.collection("column")
                    .snapshots(),
                builder: (context, snapshot) {
                  return (snapshot.connectionState == ConnectionState.waiting)
                      ? Center(child: CircularProgressIndicator())
                      : ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        String itemTitle = snapshot.data?.docs[index]['name'];
                        String website = snapshot.data?.docs[index]['link'];

                        return CardItem(
                          itemTitle: itemTitle,
                          websites: website,
                        );
                      });
                },
              ),
            )
          ],
        ));
  }
}

class CardItem extends StatefulWidget {
  String itemTitle;
  String websites;

  CardItem({required this.itemTitle, required this.websites});

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  bool _isFav = false;

  int _isfavcount = 0;

  void _togg() {
    setState(() {
      if (_isFav) {
        _isfavcount--;
        _isFav = false;
      } else {
        _isfavcount++;
        _isFav = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.grey[300],
        child: ListTile(
          leading: Image.asset("assets/chat-icon.png"),
          title: Text(widget.itemTitle,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          subtitle: Text(
            widget.websites,
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return View(widget.websites);
            }));
          },
          trailing: Container(
            child: IconButton(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              icon: (_isFav
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off)),
              color: Colors.orange,
              onPressed: _togg,
            ),
          ),
          iconColor: Colors.orange,
        ),
      ),
    );
  }
}
