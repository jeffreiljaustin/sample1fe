import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.yellow[300],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Image.asset('assets/user.png'),
                  radius: 50.0,
                ),
                Divider(height: 55.0,),
                Row(
                  children: [
                    Icon(Icons.person_2),
                    SizedBox(width: 3,),
                    Text(
                      'NAME',
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Jeffreil Austin R. Belarmino',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  'YEAR',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  'Third',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                Text(
                  'EMAIL',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  'jeffreilbelarmino@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Add Year'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.yellow[400]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
