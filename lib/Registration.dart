// ignore_for_file: file_names

// ignore: file_names
import 'package:flutter/material.dart';
import 'package:glow/ClientVirify.dart';
import 'package:glow/VisitorSales.dart';



class Registration extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Glow gym '),
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
                                            keyboardType: TextInputType
                                                .emailAddress,
                                            decoration: InputDecoration(
                                              labelText: 'Email Address',
                                              prefixIcon: const Icon(
                                                  Icons.email,
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
                                            keyboardType: TextInputType
                                                .visiblePassword,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              labelText: 'Password',
                                              prefixIcon: const Icon(
                                                Icons.lock,
                                              ),
                                              suffixIcon: const Icon(
                                                  Icons.remove_red_eye,
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
                                            keyboardType: TextInputType
                                                .visiblePassword,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              labelText: 'Confirm Password',
                                              prefixIcon: const Icon(
                                                Icons.lock,
                                              ),
                                              suffixIcon: const Icon(
                                                  Icons.remove_red_eye,
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
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                              labelText: 'Name',
                                              prefixIcon: const Icon(
                                              Icons.account_circle,
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
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20.0),
                                                borderSide: const BorderSide(
                                                  color: Colors.amber,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 40.0,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  color: Colors.amber,
                                                ),
                                                width: 80.0,
                                                height: 40.0,
                                                child: MaterialButton(
                                                  onPressed: () {
                                                    Navigator.push(context,
                                                      MaterialPageRoute(
                                                        builder: (context) => VisitorSales(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                      'Visitor'
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 50.0,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  color: Colors.amber,
                                                ),
                                                width: 80.0,
                                                height: 40.0,
                                                child: MaterialButton(
                                                  onPressed: () {
                                                    Navigator.push(context,
                                                      MaterialPageRoute(
                                                        builder: (context) => ClientVirify(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                      'Client'
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 30.0,
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
