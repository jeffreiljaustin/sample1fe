import 'package:flutter/material.dart';
import 'package:sample/Services/product.dart';

class SelectedProduct extends StatefulWidget {
  final Product product;
  const SelectedProduct({super.key, required this.product});

  @override
  State<SelectedProduct> createState() => _SelectedProductState(product: product);
}

class _SelectedProductState extends State<SelectedProduct> {

  final Product product;
  late double totalAmount;
  int numberOfOrders = 1;
  _SelectedProductState({required this.product});



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    totalAmount = product.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[50],
        title: Text(
          'Pick Order Here!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 410.0,
                  height: 550.0,
                  child: Image.network(
                    product.url,
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                      return Center(
                        child: Icon(Icons.error),
                      );
                    },
                  ),
                ),
                Text(widget.product.productName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    widget.product.description,
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₱${totalAmount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(widget.product.price.toString()),
                    IconButton(onPressed: (){
                      setState(() {
                        if(numberOfOrders > 1){
                          numberOfOrders -=1;
                          totalAmount = product.price * numberOfOrders;
                        }
                      });
                    },
                        icon:Icon(Icons.remove)
                    ),
                    Text(
                      numberOfOrders.toString(),
                      style: TextStyle(
                          fontSize: 20.0
                      ),
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        numberOfOrders +=1;
                        totalAmount = product.price * numberOfOrders;
                      });
                    },
                        icon: Icon(Icons.add)
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}