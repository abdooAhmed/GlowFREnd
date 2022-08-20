import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Glow gym'),
        foregroundColor: Colors.amber,
      ),
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                color: Colors.amber,
                  onPressed: (){} ,
                  icon: const Icon(
                    Icons.assistant,
                  ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              IconButton(
                color: Colors.amber,
                onPressed: (){} ,
                icon: const Icon(
                  Icons.home,
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              IconButton(
                color: Colors.amber,
                onPressed: (){} ,
                icon: const Icon(
                  Icons.assignment,
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
              IconButton(
                color: Colors.amber,
                onPressed: (){} ,
                icon: const Icon(
                  Icons.account_box,
                ),
             ),
            ],
          ),
        ),
      ),
          floatingActionButton: Container(
            width: 70.0,
            height: 70.0,
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Colors.amber,
              child: const Icon(
                Icons.qr_code,
                color: Colors.black87,
              ),
            ),
          ),
      );
  }
  void noti_click (){
    print ('');
  }
}
