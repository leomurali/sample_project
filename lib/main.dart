
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_project/custom/Utils.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF161618),
  ));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF000000),
          title: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 32,
                width: 32,
                //margin: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                decoration: BoxDecoration(
                  color: const Color(0XFFFF9F0A),
                  shape: BoxShape.rectangle,
                  border: Border.all(color: const Color(0XFF161618), width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: const Text("JB",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w500,
                        color: Color(0XFFF4F4F4))),
              ),
              Expanded(
                child: Image.asset(
                  "images/bell.png",
                  height:18,
                  width: 16,
                  alignment: Alignment.centerRight,
                ),
              )

            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            topLeft: Radius.circular(12),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset("images/home.png",height:24,width:24),
                label: 'Home',
                backgroundColor: const Color(0xFF0CABDF),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/dollar.png",height:24,width:24),
                label: 'Loans',
                backgroundColor:const  Color(0xFF76808A),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/invoice.png",height:24,width:24),
                label: 'Contracts',
                backgroundColor: const Color(0xFF76808A),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/users.png",height:24,width:24),
                label: 'Terms',
                backgroundColor: const Color(0xFF76808A),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/comment.png",height:24,width:24),
                label: 'Chats',
                backgroundColor: const Color(0xFF76808A),
              ),
            ],
            currentIndex: _selectedIndex,
            backgroundColor: const Color(0xFF161618),
            selectedItemColor: const Color(0xFF0CABDF),
            unselectedItemColor: const Color(0xFF76808A),
            unselectedLabelStyle: const TextStyle(color: Color(0xFF76808A),fontWeight:FontWeight.w400, ),
          ),
        ),
        backgroundColor: const Color(0xFF000000),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 16, 16, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child:  Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF161618),
                                        border: Border.all( width: 1,),
                                        borderRadius: const BorderRadius.all(Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 48,
                                          width: 48,
                                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 16),
                                          decoration: BoxDecoration(
                                            color: const Color(0XFF161618),
                                            shape: BoxShape.circle,
                                            border: Border.all(color: const Color(0XFF161618), width: 1),
                                          ),
                                          child: Image.asset(
                                            "images/ellipse1.png",
                                            alignment: Alignment.topCenter,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          margin: const  EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          child: const Text("\u20B9 15,256,486.00",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w500, color: Color(0XFFF4F4F4))),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Row(
                                              children: const [
                                                Text("Main •",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w500, color: Color(0xFFF4F4F4))),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("GBP",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w500, color: Color(0xFF8C8C8E))),
                                              ],
                                            )
                                        ),
                                        const  SizedBox(
                                          width: 20,
                                        ),

                                      ],
                                    ),
                                  ),
                                  const  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF161618),
                                        border: Border.all( width: 1),
                                        borderRadius: const BorderRadius.all(Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        
                                        Container(
                                          alignment: Alignment.center,
                                          height: 48,
                                          width: 48,
                                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 16),
                                          decoration: BoxDecoration(
                                            color: const Color(0XFF161618),
                                            shape: BoxShape.circle,
                                            border: Border.all(color: const Color(0XFF161618), width: 1),
                                          ),
                                          child: Image.asset(
                                            "images/ellipse2.png",
                                            alignment: Alignment.topCenter,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          margin: const  EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          child: const Text("\u20B9 14,897,421.00",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w500, color: Color(0XFFF4F4F4))),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Row(
                                              children: const [
                                                Text("USD",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w500, color: Color(0xFF8C8C8E))),
                                              ],
                                            )
                                        ),
                                        const  SizedBox(
                                          width: 20,
                                        ),

                                      ],
                                    ),
                                  ),
                                  const  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF161618),
                                        border: Border.all( width: 1),
                                        borderRadius: const BorderRadius.all(Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        
                                        Container(
                                          alignment: Alignment.center,
                                          height: 48,
                                          width: 48,
                                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 16),
                                          decoration: BoxDecoration(
                                            color: const Color(0XFF161618),
                                            shape: BoxShape.circle,
                                            border: Border.all(color: const Color(0XFF161618), width: 1),
                                          ),
                                          child: Image.asset(
                                            "images/ellipse3.png",
                                            alignment: Alignment.topCenter,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          margin: const  EdgeInsets.fromLTRB(6, 0, 0, 10),
                                          child: const Text("\u20B9 18,585,625.00",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w500, color: Color(0XFFF4F4F4))),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                            alignment: Alignment.center,
                                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                            child: Row(
                                              children: const [
                                                Text("CAD",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w500, color: Color(0xFF8C8C8E))),
                                              ],
                                            )
                                        ),
                                        const  SizedBox(
                                          width: 20,
                                        ),

                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  color: const Color(0xFF00455B),
                                  border: Border.all( width: 1),
                                  borderRadius: const BorderRadius.all(Radius.circular(8))),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const  EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: const Text("Action Required",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w500,
                                            color: Color(0XFFF4F4F4))),
                                  ),
                                  Row(
                                    children: [
                                      const Text("Lorem Ipsum is simply dummy\ntext of the printing and ",
                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                              color: Color(0XFFF4F4F4))),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          style: Utils.ElevatedButtonStyleOrange,
                                          onPressed: () {
                                          },
                                          child: Text(
                                            "Complete",
                                            style: Utils.ElevatedButtonTextStyleWhite,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(4, 4, 0, 0),
                                  alignment: Alignment.topLeft,

                                  child: const Text("Recent Transactions",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF8C8C8E))),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.fromLTRB(4, 4, 0, 0),
                                    child: const Text("see all",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xFF0CABDF))),),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 0,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                child: Container(
                                  
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Color(0xFFFFB6BA), width: 3)),
                                      color: Color(0xFF161618),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Expanded(
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                                    decoration: BoxDecoration(
                                                        color: const Color(0XFF00455B),
                                                        shape: BoxShape.rectangle,
                                                        border: Border.all(color: const Color(0XFF00455B), width: 1),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                                    ),
                                                    child: Image.asset(
                                                      "images/vector.png",
                                                      alignment: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Rent",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w600,
                                                              color: Color(0XFFF4F4F4))),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text('Sat • 16 Jul • 9.00pm',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                              color: Color(0XFF8C8C8E))),
                                                    ],
                                                  ),
                                                   const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Expanded(
                                                    child: Text("-\$850.00",
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                            color: Color(0XFFF4F4F4))),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    )),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 0,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                child: Container(

                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Color(0xFFFFB6BA), width: 3)),
                                      color: Color(0xFF161618),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Expanded(
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                                    decoration: BoxDecoration(
                                                        color: const Color(0XFF00455B),
                                                        shape: BoxShape.rectangle,
                                                        border: Border.all(color: const Color(0XFF00455B), width: 1),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                                    ),
                                                    child: Image.asset(
                                                      "images/vector.png",
                                                      alignment: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Rent",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w600,
                                                              color: Color(0XFFF4F4F4))),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text('Sat • 16 Jul • 9.00pm',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                              color: Color(0XFF8C8C8E))),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Expanded(
                                                    child: Text("-\$850.00",
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                            color: Color(0XFFF4F4F4))),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    )),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 0,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                child: Container(

                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Color(0xFFFFB6BA), width: 3)),
                                      color: Color(0xFF161618),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Expanded(
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                                    decoration: BoxDecoration(
                                                        color: const Color(0XFF00455B),
                                                        shape: BoxShape.rectangle,
                                                        border: Border.all(color: const Color(0XFF00455B), width: 1),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                                    ),
                                                    child: Image.asset(
                                                      "images/vector1.png",
                                                      alignment: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Rent",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w600,
                                                              color: Color(0XFFF4F4F4))),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text('Sat • 16 Jul • 9.00pm',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                              color: Color(0XFF8C8C8E))),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Expanded(
                                                    child: Text("+\$850.00",
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                            color: Color(0XFFF4F4F4))),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    )),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 0,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                child: Container(

                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Color(0xFFFFB6BA), width: 3)),
                                      color: Color(0xFF161618),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Expanded(
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                                    decoration: BoxDecoration(
                                                        color: const Color(0XFF00455B),
                                                        shape: BoxShape.rectangle,
                                                        border: Border.all(color: const Color(0XFF00455B), width: 1),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                                    ),
                                                    child: Image.asset(
                                                      "images/vector1.png",
                                                      alignment: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Rent",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w600,
                                                              color: Color(0XFFF4F4F4))),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text('Sat • 16 Jul • 9.00pm',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                              color: Color(0XFF8C8C8E))),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Expanded(
                                                    child: Text("+\$850.00",
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                            color: Color(0XFFF4F4F4))),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    )),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 0,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                child: Container(

                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Color(0xFFFFB6BA), width: 3)),
                                      color: Color(0xFF161618),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Expanded(
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                                    decoration: BoxDecoration(
                                                        color: const Color(0XFF00455B),
                                                        shape: BoxShape.rectangle,
                                                        border: Border.all(color: const Color(0XFF00455B), width: 1),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                                    ),
                                                    child: Image.asset(
                                                      "images/vector.png",
                                                      alignment: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Rent",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w600,
                                                              color: Color(0XFFF4F4F4))),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text('Sat • 16 Jul • 9.00pm',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                              color: Color(0XFF8C8C8E))),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Expanded(
                                                    child: Text("-\$850.00",
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                            color: Color(0XFFF4F4F4))),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    )),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 0,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                child: Container(

                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Color(0xFFFFB6BA), width: 3)),
                                      color: Color(0xFF161618),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Expanded(
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                                    decoration: BoxDecoration(
                                                        color: const Color(0XFF00455B),
                                                        shape: BoxShape.rectangle,
                                                        border: Border.all(color: const Color(0XFF00455B), width: 1),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                                    ),
                                                    child: Image.asset(
                                                      "images/vector.png",
                                                      alignment: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Rent",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w600,
                                                              color: Color(0XFFF4F4F4))),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text('Sat • 16 Jul • 9.00pm',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                              color: Color(0XFF8C8C8E))),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Expanded(
                                                    child: Text("-\$850.00",
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                            color: Color(0XFFF4F4F4))),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    )),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 0,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                child: Container(

                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Color(0xFFFFB6BA), width: 3)),
                                      color: Color(0xFF161618),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Expanded(
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                                    decoration: BoxDecoration(
                                                        color: const Color(0XFF00455B),
                                                        shape: BoxShape.rectangle,
                                                        border: Border.all(color: const Color(0XFF00455B), width: 1),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                                    ),
                                                    child: Image.asset(
                                                      "images/vector1.png",
                                                      alignment: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Rent",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w600,
                                                              color: Color(0XFFF4F4F4))),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text('Sat • 16 Jul • 9.00pm',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                              color: Color(0XFF8C8C8E))),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Expanded(
                                                    child: Text("+\$850.00",
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                            color: Color(0XFFF4F4F4))),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    )),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 0,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8))),
                                child: Container(

                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(color: Color(0xFFFFB6BA), width: 3)),
                                      color: Color(0xFF161618),
                                    ),
                                    padding: const EdgeInsets.all(20.0),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Expanded(
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height: 40,
                                                    width: 40,
                                                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                                    decoration: BoxDecoration(
                                                        color: const Color(0XFF00455B),
                                                        shape: BoxShape.rectangle,
                                                        border: Border.all(color: const Color(0XFF00455B), width: 1),
                                                        borderRadius: const BorderRadius.all(Radius.circular(8))
                                                    ),
                                                    child: Image.asset(
                                                      "images/vector1.png",
                                                      alignment: Alignment.topCenter,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Rent",
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 16,  fontWeight: FontWeight.w600,
                                                              color: Color(0XFFF4F4F4))),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text('Sat • 16 Jul • 9.00pm',
                                                          textAlign: TextAlign.start,
                                                          style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                              color: Color(0XFF8C8C8E))),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  const Expanded(
                                                    child: Text("+\$850.00",
                                                        textAlign: TextAlign.end,
                                                        style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400,
                                                            color: Color(0XFFF4F4F4))),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        )

                                      ],
                                    )),
                              ),
                            ),
                            const SizedBox(height: 5),

                          ],

                        ),

                      ],
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),

      ),
    );
  }


}
