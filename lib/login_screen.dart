import 'package:flutter/material.dart';
import 'package:glow/Registration.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
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
                                                'Login'
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 50.0,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            const Text('Don\'t have an account'),
                                            TextButton(onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) => Registration(),
                                                  ),
                                              );
                                            },
                                              child: const Text(
                                                'Register now',
                                                style: TextStyle(
                                                  color: Colors.amber
                                                ),
                                              ),
                                            )
                                          ],
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

  void noti_click() {
    print('');
  }
}
