// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ClientVirify extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title:
        const Text('Glow gym '),
        foregroundColor: Colors.amber,
      ),

      body: Stack(
        children:[
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
                                    height: 30.0,
                                  ),
                                  Container(
                                    child: Column(
                                        children: [
                                          TextFormField(
                                            cursorColor: Colors.amber,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              labelText: 'ID',
                                              prefixIcon: const Icon(
                                                Icons.assignment_ind_rounded,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
                                                borderSide: const BorderSide(
                                                  color: Colors.amber,
                                                ),
                                              ),

                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          TextFormField(
                                            cursorColor: Colors.amber,
                                            keyboardType: TextInputType.number,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              labelText: 'Phone Number',
                                              prefixIcon: const Icon(
                                                Icons.add_ic_call_sharp,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),

                                                borderSide: const BorderSide(
                                                  color: Colors.amber,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20.0),
                                              color: Colors.amber,
                                            ),
                                            width: double.infinity,
                                            height: 40.0,
                                            child: MaterialButton(
                                              onPressed: () {},
                                              child: const Text(
                                                  'Confirm'
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 50.0,
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
}
