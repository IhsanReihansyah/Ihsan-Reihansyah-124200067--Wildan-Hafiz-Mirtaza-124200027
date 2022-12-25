import 'package:flutter/material.dart';
import 'countries_model.dart';
import 'page_detail_countries.dart';

class actorDetail extends StatefulWidget {
  final ProductData? actor;
  const actorDetail({Key? key, required this.actor}) : super(key: key);

  @override
  State<actorDetail> createState() => _actorDetailState();
}

class _actorDetailState extends State<actorDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.actor?.name}",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        height: 300,
                        child: Image.network("${widget.actor?.image}"),),
                    Padding(padding: const EdgeInsets.only(top: 1.0)),

                    Text(""),

                    Container(
                      decoration: BoxDecoration(
                      color: Colors.brown[400],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        offset: Offset(
                          0.0,
                          10.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: -6.0,
                      ),
                    ],
                      ),
                    child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(""),

                        Text(
                          "Nama Actor\t   : ${widget.actor?.actor}",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        ),

                        Text(
                          "Jenis Kelamin     : ${widget.actor?.gender}",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        ),

                        Text(
                          "Species\t\t   : ${widget.actor?.species}",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        ),

                        Text(
                          "Mantra\t\t   : ${widget.actor?.patronus}",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        ),

                        Text(
                          "Asrama\t\t   : ${widget.actor?.house}",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.right,
                        ),

                        Text(
                          "Warna Rambut   : ${widget.actor?.hairColour}",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),

                        Text(
                          "Warna Mata\t   : ${widget.actor?.eyeColour}",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.right,
                        ),

                        Text(""),

                        // Text(
                        //   (widget.actor?.dateOfBirth != null) ? "${widget.actor?.yearOfBirth}" : "TBA",
                        //   style: TextStyle(color: Colors.black, fontSize: 23), textAlign: TextAlign.justify,
                        // ),
                      ],
                    ),
                    ),
                    ),
                    Text(""),
                    Text(
                      (widget.actor?.dateOfBirth != null)
                          ? "${widget.actor?.dateOfBirth}"
                          : "TBA",
                      style: TextStyle(
                        color: Colors.brown[900],
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
