// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VisitorSales extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Glow gym '),
        foregroundColor: Colors.amber,
      ),
      body: Stack(
        children: [
          const Expanded(
            child: Image(
              image: AssetImage("assets/images/2.jpg"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.grey.withOpacity(0.9),
                              ),
                              width: double.infinity,
                              padding: EdgeInsetsDirectional.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                        "assets/images/logo2.jpg",
                                      ),
                                    ),
                                    height: 80.0,
                                    width: 80.0,
                                  ),
                                  const SizedBox(
                                    height: 45.0,
                                  ),
                                  Container(
                                    child: Column(
                                        children: [
                                          Container(
                                            height: 250.0,
                                            child: ListView.separated(
                                              scrollDirection: Axis.vertical,
                                                itemBuilder: (context , index) => buildSalesItem(),
                                                separatorBuilder: (context , index) => const SizedBox(height: 20.0),
                                                itemCount: 5,
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSalesItem() => Row(
    children:  [
      const CircleAvatar(
        radius: 30.0,
        backgroundImage: AssetImage(
            "assets/images/logo.jpg"
        ),
      ),
      TextButton(onPressed: (){},
        child: const Text(
          'Ahmad Mohamed',
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      )
    ],
  );


}
