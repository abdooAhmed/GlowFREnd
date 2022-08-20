// ignore_for_file: file_names, implementation_imports
// flutter/src/cupertino/icons.dart
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NutriScreen extends StatefulWidget {

  @override
  State<NutriScreen> createState() => _NutriScreenState();
}

class _NutriScreenState extends State<NutriScreen> {
  int numMeals = 0;

  String meal = 'Meal Number  ' ;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Nutrition Doctor'),
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
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Nutrition Plan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey.withOpacity(0.9),
                          ),
                          padding: EdgeInsetsDirectional.all(15.0),
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
                                      maxLines: 10,
                                      minLines: 2,
                                      decoration: InputDecoration(
                                        labelText: 'Description',
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
                                      height: 20.0,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Number of Meals',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15.0,
                                        ),
                                        FloatingActionButton(
                                          child: const Icon(Icons.remove),
                                          onPressed: (){
                                            setState(() {
                                              numMeals > 0 ?(numMeals--) : (numMeals=0) ;
                                            });
                                          },
                                          heroTag: 'meal-',
                                          mini: true,
                                          backgroundColor: Colors.amber,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text('$numMeals',
                                          style: const TextStyle(
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        FloatingActionButton(
                                          child: const Icon(Icons.add),
                                          onPressed: (){
                                            setState(() {
                                              numMeals++;
                                            });
                                          },
                                          heroTag: 'meal+',
                                          mini: true,
                                          backgroundColor: Colors.amber,
                                        ),
                                      ],
                                    ),

                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                            Row(
                                              children: [
                                                Expanded(
                                                   child: Container(
                                                     width: 200.0,
                                                     height: 220.0,
                                                     child: ListView.separated(
                                                          itemBuilder: (context , index) => buildNumberMeals(),
                                                          separatorBuilder: (context , index) => const SizedBox(height: 15.0),
                                                          itemCount: numMeals,
                                                          scrollDirection: Axis.vertical,
                                                        ),
                                                   ),
                                                 ),
                                              ],
                                            ),
                                    const SizedBox(
                                      height: 30.0,
                                    ),
                                    TextFormField(
                                      cursorColor: Colors.amber,
                                      maxLines: 10,
                                      minLines: 2,
                                      decoration: InputDecoration(
                                        labelText: 'Notes',
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
                                      height: 30.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.0),
                                        color: Colors.amber,
                                      ),
                                      width: 100.0,
                                      height: 40.0,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        child: const Text(
                                            'Submit'
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
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
        ],
      ),
      //bottomNavigationBar: BottomAppBar(
      //  color: Colors.amber,
      //  child: Container(
      //    height: 50.0,
      //    child: Row(
      //      mainAxisAlignment: MainAxisAlignment.center,
      //      children: [
      //        IconButton(
      //            onPressed: (){} ,
      //            icon: const Icon(
      //              Icons.add,
      //            ),
      //        ),
      //        const SizedBox(
      //          width: 30.0,
      //        ),
      //        IconButton(
      //          onPressed: (){} ,
      //          icon: const Icon(
      //            Icons.add,
      //          ),
      //        ),
      //        const SizedBox(
      //          width: 30.0,
      //        ),
      //        IconButton(
      //          onPressed: (){} ,
      //          icon: const Icon(
      //            Icons.add,
      //          ),
      //        ),
      //        const SizedBox(
      //          width: 30.0,
      //        ),
      //        IconButton(
      //          onPressed: (){} ,
      //          icon: const Icon(
      //            Icons.add,
      //          ),
      //       ),
      //      ],
      //    ),
      //  ),
      //),
      //floatingActionButton: FloatingActionButton(
      //  onPressed: (){},
      //  backgroundColor: Colors.black87,
      //  child: const Icon(
      //    Icons.qr_code,
      //    color: Colors.amber,
      //  ),
      //),
    );
  }

  Widget buildNumberMeals() => Padding(
    padding: const EdgeInsetsDirectional.only(top: 15.0),
    child: TextFormField(
            cursorColor: Colors.amber,
            maxLines: 10,
            minLines: 2,
            decoration: InputDecoration(
              labelText: meal+'$count',
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
  );
}
