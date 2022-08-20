// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SalesForm extends StatefulWidget {

  @override
  State<SalesForm> createState() => _SalesFormState();
}

class _SalesFormState extends State<SalesForm> {
  List<String> SalesAcounts =[ 'Sales Name 1','Sales Name 2','Sales Name 3','Sales Name 4' ];
  List<String> Offers =[ 'One Month','3 Months','6 Months','Year' ];

  String SelectedItem = 'Sales Name 1';
  String SelectedOffer = 'One Month';

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
          //Container(
          //  decoration: const BoxDecoration(
          //    borderRadius: BorderRadiusDirectional.only(
          //      bottomEnd: Radius.elliptical(300.0 , 100.0),
          //      bottomStart: Radius.elliptical(300.0 , 100.0),
          //    ),
          //  ),
          //  clipBehavior: Clip.hardEdge,
          //  child: const Padding(
          //    padding: EdgeInsets.only(bottom: 8),
          //    child: Image(
          //          image: AssetImage("assets/images/Khalifa.jpg"),
          //          height: 250.0,
          //          width: double.infinity,
          //          fit: BoxFit.cover,
          //         ),
          //  ),
          //),
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
                      const Text(
                        'Subscription Form',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white.withOpacity(0.9),
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
                                    height: 5.0,
                                  ),
                                  const Text(
                                    'Kariem Khalifa',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'OleoScriptSwashCaps',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30.0,
                                  ),
                                  Container(
                                    child: Column(
                                        children: [
                                          TextFormField(
                                            cursorColor: Colors.amber,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                              labelText: 'Name',
                                              prefixIcon: const Icon(
                                                Icons.account_circle,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
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
                                            decoration: InputDecoration(
                                              labelText: 'Phone Number',
                                              prefixIcon: const Icon(
                                                Icons.add_ic_call_sharp,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
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
                                            decoration: InputDecoration(
                                              labelText: 'National ID',
                                              prefixIcon: const Icon(
                                                Icons.assignment_ind,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
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
                                          DropdownButtonFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                borderSide: const BorderSide(
                                                  width: 2.0,
                                                  color: Colors.amber
                                                ),
                                              ),
                                            ),
                                            value: SelectedItem,
                                            onChanged: ( sName){
                                              setState(() {
                                                SelectedItem = sName as String ;
                                              });
                                            },
                                            items: SalesAcounts.map((SalesName) {
                                              return DropdownMenuItem(
                                                child: Text(SalesName),
                                                value: SalesName,
                                              );
                                            }).toList(),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          DropdownButtonFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
                                                borderSide: const BorderSide(
                                                    width: 2.0,
                                                    color: Colors.amber
                                                ),
                                              ),
                                            ),
                                            value: SelectedOffer,
                                            onChanged: (offer){
                                              setState(() {
                                                SelectedOffer = offer as String ;
                                              });
                                            },
                                            items: Offers.map((offer) {
                                              return DropdownMenuItem(
                                                child: Text(offer),
                                                value: offer,
                                              );
                                            }).toList(),
                                          ),
                                          const SizedBox(
                                            height: 30.0,
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
                                                  'Submit'
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
