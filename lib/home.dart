import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year = 0;

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
                Center(
                  child: CircleAvatar(
                    child: Image.asset('assets/user.png'),
                    radius: 65.0,
                  ),
                ),
                Divider(height: 55.0, color: Colors.yellow, thickness: 5.00,),
                Row(
                  children: [
                    Icon(
                      Icons.person_2,
                      color: Colors.yellow[500],
                    ),
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
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.yellow[500],
                    ),
                    SizedBox(width: 3,),
                    Text(
                      'YEAR',
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  '$year Year',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 30.0,),
                Row(
                  children: [
                    Icon(
                      Icons.person_2,
                      color: Colors.yellow[500],
                    ),
                    SizedBox(width: 3,),
                    Text(
                      'EMAIL',
                      style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  '21-10898@g.batstate-u-edu.ph',
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
                    onPressed: (){
                      setState(() {
                        year +=1;
                      });
                    },
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
