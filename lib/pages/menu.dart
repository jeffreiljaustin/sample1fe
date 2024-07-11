import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sample/pages/selectedproduct.dart';
import 'package:sample/services/product.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  late Future<List<dynamic>> products;
  Future<List<dynamic>> fetchData() async{
    final response = await http.get(Uri.parse('http://10.0.2.2:8080/api/v1/product/all'));
    final data = jsonDecode(response.body);
    print(data);
    List products = <Product>[];
    for(var product in data){
      products.add(product.fromJson(product));
    }
    return products;
  }

  @override
  void initState() {
    super.initState();
    products = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('This is Menu'),
        backgroundColor: Colors.yellow[300],
        centerTitle: true,
      ),

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/yellowbg.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: FutureBuilder(
            future: products,
            builder: (context, snapshots){
              if(snapshots.connectionState == ConnectionState.waiting){
                return Center(
                  child: SpinKitChasingDots(
                    color: Colors.yellow[300],
                    size: 60.0,
                  ),
                );
              }
              if(snapshots.hasData){
                List products = snapshots.data!;
                return Padding(
                  padding: EdgeInsets.all(3.0),
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(products[index].productName,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(products[index].price.toString(),
                              style: TextStyle(color: Colors.black),)
                            ],
                          ),
                          leading: CircleAvatar(backgroundImage: NetworkImage(products[index].url),
                          ),
                          onTap: (){
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context) => SelectedProduct(product: products[index]),
                            )
                            );
                          },
                        ),
                      );
                    },
                  ),
                );
              }
              return Center(
                child: Text('Unable to load data'),
              );
            },
          ),
        ),
      ),
    );
  }
}
