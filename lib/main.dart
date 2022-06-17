import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SplashScreen',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: 500,
        backgroundColor: Color(0xfffaa026),
        splash: 'android/assets/sand-clock.gif',
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
        duration: 6000,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    profilePage(),
    tasksPage(),
    statsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      body: pages[pageIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        // shape: CircularNotchedRectangle(), //shape of notch
        // notchMargin: 5,
        //     height: 40,
        //     decoration: BoxDecoration(
        //     color: Colors.black,
        //     //color: Theme.of(context).primaryColor,
        //     borderRadius: const BorderRadius.only(
        //     topLeft: Radius.circular(20),
        // topRight: Radius.circular(20),
        // ),
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.account_box_rounded,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.account_box_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.add_circle_outlined,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.assessment,
                      color: Colors.white,
                      size: 25,
                    )
                  : const Icon(
                      Icons.assessment_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: buildMyNavBar(context)),
    );
  }

// Container buildMyNavBar(BuildContext context) {
//   return Container(
//     height: 40,
//     decoration: BoxDecoration(
//       color: Colors.black,
//       //color: Theme.of(context).primaryColor,
//       borderRadius: const BorderRadius.only(
//         topLeft: Radius.circular(20),
//         topRight: Radius.circular(20),
//       ),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         IconButton(
//           enableFeedback: false,
//           onPressed: () {
//             setState(() {
//               pageIndex = 0;
//             });
//           },
//           icon: pageIndex == 0
//               ? const Icon(
//                   Icons.account_box_rounded,
//                   color: Colors.white,
//                   size: 25,
//                 )
//               : const Icon(
//                   Icons.account_box_outlined,
//                   color: Colors.white,
//                   size: 25,
//                 ),
//         ),
//         IconButton(
//           enableFeedback: false,
//           onPressed: () {
//             setState(() {
//               pageIndex = 1;
//             });
//           },
//           icon: pageIndex == 1
//               ? const Icon(
//                   Icons.add_circle_outlined,
//                   color: Colors.white,
//                   size: 25,
//                 )
//               : const Icon(
//                   Icons.add_circle_outline,
//                   color: Colors.white,
//                   size: 25,
//                 ),
//         ),
//         IconButton(
//           enableFeedback: false,
//           onPressed: () {
//             setState(() {
//               pageIndex = 2;
//             });
//           },
//           icon: pageIndex == 2
//               ? const Icon(
//                   Icons.assessment,
//                   color: Colors.white,
//                   size: 25,
//                 )
//               : const Icon(
//                   Icons.assessment_outlined,
//                   color: Colors.white,
//                   size: 25,
//                 ),
//         ),
//       ],
//     ),
//   );
// }
}

//page 1
class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGN IN',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'VT323',
            fontWeight: FontWeight.bold,
            wordSpacing: 5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: loginbody(),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGN IN',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'VT323',
            fontWeight: FontWeight.bold,
            wordSpacing: 5,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: loginbody(),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

class loginbody extends StatefulWidget {
  const loginbody({Key? key}) : super(key: key);

  @override
  State<loginbody> createState() => _loginbodyState();
}

class _loginbodyState extends State<loginbody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: Colors.lightGreen[100],
                ),
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  labelStyle: TextStyle(
                    fontSize: 25,
                    fontFamily: 'VT323',
                    color: Colors.white,
                  ),
                ),
              )),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.lightGreen[100],
                ),
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 25,
                    fontFamily: 'VT323',
                    color: Colors.white,
                  ),
                ),
              )),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'VT323',
                  ),
                ),
              )),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: const Text('LOGIN',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'VT323',
                    )),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              )),
          Row(
            children: <Widget>[
              const Text('Do not have an account?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'VT323',
                  )),
              TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'VT323',
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup()),
                  );
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Time Management App',
          style: TextStyle(
            fontFamily: 'VT323',
            fontWeight: FontWeight.bold,
            wordSpacing: 10,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: signupbody(),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

class signupbody extends StatefulWidget {
  const signupbody({Key? key}) : super(key: key);

  @override
  State<signupbody> createState() => _signupbodyState();
}

class _signupbodyState extends State<signupbody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10.0),
                child: const Text('SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontFamily: 'VT323',
                    ))),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(
                    color: Colors.lightGreen[100],
                  ),
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                      fontSize: 25,
                      fontFamily: 'VT323',
                      color: Colors.white,
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.lightGreen[100],
                  ),
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 25,
                      fontFamily: 'VT323',
                      color: Colors.white,
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.lightGreen[100],
                  ),
                  obscureText: true,
                  controller: confirmPassController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                      fontSize: 25,
                      fontFamily: 'VT323',
                      color: Colors.white,
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(
                    color: Colors.lightGreen[100],
                  ),
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Mail',
                    labelStyle: TextStyle(
                      fontSize: 25,
                      fontFamily: 'VT323',
                      color: Colors.white,
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text('REGISTER',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'VT323',
                      )),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    print(emailController.text);
                  },
                )),
          ],
        ));
  }
}

//Page 2
class tasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        floatingActionButton: Container(
          height: 55,
          width: 55,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddTasks()),
              );
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              "MY TASKS",
              style: TextStyle(
                fontFamily: 'VT323',
                fontSize: 25,
                wordSpacing: 5,
              ),
            )),
        backgroundColor: Colors.blueGrey[900],
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                  child: Text(
                'Add Task!',
                style: TextStyle(
                  fontFamily: 'VT323',
                  color: Colors.white,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              )),
            ],
          ),
        )));
  }
}

class addTask extends StatelessWidget {
  const addTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//page 3
class statsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text(
            "Statistics",
            style: TextStyle(
              fontFamily: 'VT323',
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
            child: Text(
          "This is Statistics page",
          style: TextStyle(
            fontFamily: 'VT323',
            color: Colors.white,
            // backgroundColor: Colors.blueGrey[900],
            fontSize: 25,
          ),
        )));
  }
}

enum Priority { ImpUrg, Imp, Urg, Nill }

class AddTasks extends StatefulWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  State<AddTasks> createState() => _AddTasksState();
}

class _AddTasksState extends State<AddTasks> {
  Priority _Eisenhower = Priority.ImpUrg;
  TextEditingController taskController = TextEditingController();
  TextEditingController priorityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey[900],
      child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'VT323',
                      color: Colors.white,
                    ),
                    controller: taskController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'What task?',
                      labelStyle: TextStyle(
                        fontSize: 25,
                        fontFamily: 'VT323',
                        color: Colors.white,
                      ),
                    ),
                  )),
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Set the priority!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'VT323',
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Important & Urgent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'VT323',
                      ),
                    ),
                    leading: Radio<Priority>(
                      value: Priority.ImpUrg,
                      groupValue: _Eisenhower,
                      onChanged: (value) {
                        setState(() {
                          _Eisenhower = Priority.ImpUrg;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Important',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'VT323',
                      ),
                    ),
                    leading: Radio<Priority>(
                      value: Priority.Imp,
                      groupValue: _Eisenhower,
                      onChanged: (value) {
                        setState(() {
                          _Eisenhower = Priority.Imp;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Urgent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'VT323',
                      ),
                    ),
                    leading: Radio<Priority>(
                      value: Priority.Urg,
                      groupValue: _Eisenhower,
                      onChanged: (value) {
                        setState(() {
                          _Eisenhower = Priority.Urg;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Neither Important nor urgent',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'VT323',
                      ),
                    ),
                    leading: Radio<Priority>(
                      value: Priority.Nill,
                      groupValue: _Eisenhower,
                      onChanged: (value) {
                        setState(() {
                          _Eisenhower = Priority.Nill;
                        });
                      },
                    ),
                  ),
                  // ListTile(
                  //   title: const Text('Cat'),
                  //   leading: Radio<Pet>(
                  //     value: Pet.cat,
                  //     groupValue: _pet,
                  //     onChanged: (value) {
                  //       setState(() {
                  //         _pet = Pet.cat;
                  //       });
                  //     },
                  //   ),
                  // ),
                ],
              ),
              // Column(
              //   children: <Widget>[
              //     ListTile(
              //       title: const Text('Urgent & important'),
              //       leading: Radio(
              //         value: Priority.urg_imp,
              //         groupValue: _eisenhower,
              //         onChanged: (value) async => setState(() {
              //             _eisenhower= value;
              //           }),
              //       ),
              //     ),
              //     ListTile(
              //       title: const Text('Urgent'),
              //       leading: Radio(
              //         value: Priority.urg,
              //         groupValue: _eisenhower,
              //         onChanged: (value) async {
              //           setState(() {
              //             _eisenhower = value;
              //           });
              //         },
              //       ),
              //     ),
              //     ListTile(
              //       title: const Text('Important'),
              //       leading: Radio(
              //         value: Priority.imp,
              //         groupValue: _eisenhower,
              //         onChanged: (value) async {
              //           setState(() {
              //             _eisenhower = value;
              //           });
              //         },
              //       ),
              //     ),
              //   ],
              // ),
              // Container(
              //   alignment: Alignment.center,
              //   padding: EdgeInsets.all(20),
              //   child: TextField(
              //     controller: priorityController,
              //     style: TextStyle(
              //       fontSize: 25,
              //       fontFamily: 'VT323',
              //       color: Colors.white,
              //     ),
              //     decoration: const InputDecoration(
              //       border: OutlineInputBorder(),
              //       labelText: 'set priority!',
              //       labelStyle: TextStyle(
              //         fontSize: 25,
              //         fontFamily: 'VT323',
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )),
    );
  }
}
