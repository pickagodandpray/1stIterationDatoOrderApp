import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hieuappe/routes/routeConst.dart';
import 'package:hieuappe/routes/routes.dart';
import 'package:hieuappe/suggestProduct.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Container(
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: CircleAvatar(
                      radius: 28.0,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25.0,
                        backgroundImage: AssetImage('assets/VietFroggy.png'),
                      ))))),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(children: <Widget>[
            Row(
              //Row 1
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                    child: Text(
                      "Johnny Nguyen",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17.5,
                      ),
                    ))
              ],
            ),
            Row(
              //Row 2
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                    child: Text("Rørlegger"))
              ],
            ),
            Row(
              //Row 3
              children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(5, 8, 5, 0),
                      child: ListTile(
                          title: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2.0),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.5)),
                            hintText: "Søk",
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30.0,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {},
                            )),
                      ))),
                )
              ],
            ),
            Row(
              //Row 4
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                  child: ListTile(
                    title: Text("Statistikk"),
                    trailing: Icon(Icons.play_circle_outline),
                  ),
                ))
              ],
            ),
            Row(
                //Row 5
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 160,
                      height: 110,
                      child: MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff7645fc),
                                    Color(0xffa741fb)
                                  ],
                                  stops: [0.25, 0.5],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )),
                            child: Column(children: <Widget>[
                              Container(
                                  child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Icon(Icons.circle,
                                        color: Colors.black.withOpacity(0.25))),
                              )),
                              Container(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 15, 0, 0),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '1792',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white),
                                        ),
                                      ))),
                              Container(
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          'BESTILLINGER',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white),
                                        ),
                                      )))
                            ]),
                          ))),
                  Container(
                      width: 160,
                      height: 110,
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const suggestProducts()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff4573fc),
                                    Color(0xff6041fb)
                                  ],
                                  stops: [0.25, 0.5],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )),
                            child: Column(children: <Widget>[
                              Container(
                                  child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Icon(Icons.circle,
                                        color: Colors.black.withOpacity(0.25))),
                              )),
                              Container(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 15, 0, 0),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '289',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white),
                                        ),
                                      ))),
                              Container(
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                      child: Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          'PRODUKT ANBEFALINGER',
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white),
                                        ),
                                      )))
                            ]),
                          ))),
                ]),
            Row(
              // Row 6
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                  child: ListTile(
                    title: Text("Prosjekter"),
                    trailing: Icon(Icons.play_circle_outline),
                  ),
                ))
              ],
            ),
            Card(
                color: Colors.blueGrey.withOpacity(0.50),
                child: (SizedBox(
                    width: 355,
                    height: 110,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                child: Row(children: [
                                  Text('Construction City',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white)),
                                ])),
                            Text('AF Gruppen'),
                            Row(children: [
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage('assets/VietFroggy.png'),
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage('assets/VietFroggy.png'),
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage('assets/VietFroggy.png'),
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage('assets/VietFroggy.png'),
                              )
                            ])
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                            child: Column(children: [
                              Icon(
                                Icons.star,
                                color: Colors.blue.withOpacity(1),
                              )
                            ])),
                        new Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                                height: 110,
                                width: 147,
                                child: Image.asset('assets/House.jpg'))
                          ],
                        )
                      ],
                    )))),
            Card(
                color: Colors.blueGrey.withOpacity(0.50),
                child: (SizedBox(
                    width: 355,
                    height: 110,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                child: Row(children: [
                                  Text('Construction City',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white)),
                                ])),
                            Text('AF Gruppen'),
                            Row(children: [
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage('assets/VietFroggy.png'),
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage('assets/VietFroggy.png'),
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage('assets/VietFroggy.png'),
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage('assets/VietFroggy.png'),
                              )
                            ])
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                            child: Column(children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.blue.withOpacity(1),
                              )
                            ])),
                        new Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                                height: 110,
                                width: 147,
                                child: Image.asset('assets/House.jpg'))
                          ],
                        )
                      ],
                    )))),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                  child: ListTile(
                    title: Text("Siste Bestillinger"),
                    trailing: Icon(Icons.play_circle_outline),
                  ),
                ))
              ],
            ),
            Card(
                color: Colors.blueGrey.withOpacity(0.5),
                child: SizedBox(
                    width: 355,
                    height: 110,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("I GÅR", style: TextStyle(fontSize: 14.0)),
                              Text(
                                "Overgang konsentrisk 219,1 x 168,3 x 2,6. Syrefast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: SizedBox(
                                        height: 30,
                                        width: 115,
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "NRF1921835",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ))),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.blue,
                                    ),
                                    height: 30,
                                    width: 50,
                                    child: Center(
                                        child: Text("5 stk",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10))),
                                  )
                                ],
                              )
                            ])))),
            Card(
                color: Colors.blueGrey.withOpacity(0.5),
                child: SizedBox(
                    width: 355,
                    height: 110,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("I GÅR", style: TextStyle(fontSize: 14.0)),
                              Text(
                                "Overgang konsentrisk 219,1 x 168,3 x 2,6. Syrefast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: SizedBox(
                                        height: 30,
                                        width: 115,
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "NRF1921835",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ))),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.blue,
                                    ),
                                    height: 30,
                                    width: 50,
                                    child: Center(
                                        child: Text("5 stk",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10))),
                                  )
                                ],
                              )
                            ])))),
            Card(
                color: Colors.blueGrey.withOpacity(0.5),
                child: SizedBox(
                    width: 355,
                    height: 110,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("I GÅR", style: TextStyle(fontSize: 14.0)),
                              Text(
                                "Overgang konsentrisk 219,1 x 168,3 x 2,6. Syrefast",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: SizedBox(
                                        height: 30,
                                        width: 115,
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "NRF1921835",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ))),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.blue,
                                    ),
                                    height: 30,
                                    width: 50,
                                    child: Center(
                                        child: Text("5 stk",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10))),
                                  )
                                ],
                              )
                            ])))),
          ]),
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.blueGrey.withOpacity(0.55),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_cozy_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: "Bestillinger",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              color: Colors.lightBlue[800],
              size: 50.0,
            ),
            label: "Bestill",
            backgroundColor: Colors.blue[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory_outlined),
            label: "Produkter",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        selectedItemColor: Colors.blue[800],
      ),
    );
  }
}
