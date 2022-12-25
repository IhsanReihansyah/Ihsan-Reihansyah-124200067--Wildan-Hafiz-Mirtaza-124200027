import 'package:cobaapi/base_network.dart';
import 'package:cobaapi/countries_model.dart';
import 'package:cobaapi/detaihero.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageDetailCountries extends StatefulWidget {
  const PageDetailCountries({Key? key}) : super(key: key);
  @override
  _PageDetailCountriesState createState() => _PageDetailCountriesState();
}

class _PageDetailCountriesState extends State<PageDetailCountries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemain Film Harry Potter"),

      ),
      body: _buildDetailCountriesBody(),
    );
  }

  Widget _buildDetailCountriesBody() {
    return Container(
      child: FutureBuilder(
        future: BaseNetwork.get(''),
        builder: (
          BuildContext context,
          AsyncSnapshot<dynamic> snapshot,
        ) {
          if (snapshot.hasError) {
            print(snapshot);
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            ProductDataModel countriesModel =
                ProductDataModel.fromJson(snapshot.data);
            print(countriesModel);
            return _buildSuccessSection(countriesModel);
          }
          return _buildLoadingSection();
        },
      ),
    );
  }

  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildEmptySection() {
    return Text("Empty");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSuccessSection(ProductDataModel data) {
    return ListView.builder(
      itemCount: data.product?.length,
      itemBuilder: (BuildContext context, int index) {
        final ProductData? product = data.product?[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => actorDetail(actor: product)));
          },

          child: Center(
            child: Container(
              width: 2000,
              margin: EdgeInsets.only(
                top: 7,
              ),
              // padding: EdgeInsets.only(
              //   top: 1,
              //   bottom: 1,
              // ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.circular(50)),

              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage("${data.product?[index].image}"),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Text(
                    "${data.product?[index].name}",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // child: Card(
          //   child: Column(
          //     children: [
          //       Padding(
          //           padding: EdgeInsets.all(5.0)),

          //       // ListTile(
          //       // title: Text("${data.product?[index].name}",
          //       // style: TextStyle(fontSize: 25,),
          //       // textAlign: TextAlign.center,
          //       // ),
          //       // // leading: NetworkImage("${data.product?[index].image}")
          //       // ),
          //       // SizedBox(
          //       //           width: 100, height: 200,
          //       //           child: Image.network("${data.product?[index].image}")),
          //       Row(

          //         children: <Widget>[
          //           CircleAvatar(
          //             radius: 25,
          //             backgroundImage:
          //                 NetworkImage("${data.product?[index].image}"),
          //           ),
          //           SizedBox(
          //             height: 15, width: 15,
          //           ),
          //           Text(
          //             "${data.product?[index].name}",
          //             style: TextStyle(
          //               fontSize: 15,
          //             ),
          //           ),

          //         ],
          //       ),
          //       SizedBox(
          //             height: 10,
          //           ),
          //     ],
          //   ),
          //   // child: ListTile(
          //   //     title: Text("${data.product?[index].name}"),
          //   //     leading: NetworkImage("${data.product?[index].image}")),
          // ),
        );
      },
    );
  }

  Widget _buildItemCountries(String value) {
    return Text(value);
  }
}
