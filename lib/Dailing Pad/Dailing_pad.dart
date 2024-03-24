import 'package:flutter/material.dart';

class Dailing extends StatefulWidget {
  const Dailing({super.key});
  @override
  State<Dailing> createState() => _DailingState();
}

class _DailingState extends State<Dailing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 47, 55, 61),
                  Color.fromARGB(255, 56, 77, 77),
                  Color.fromARGB(255, 62, 54, 70),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(children: <Widget>[
              const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.looks_one_rounded, size: 20, color: Colors.blue,
                      ),
                      SizedBox(
                        width: 6,

                      ),
                      Icon(Icons.phone, size: 20, color: Colors.white,),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '00:55',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                  Icon(Icons.more_vert_rounded, size: 20,
                          color: Colors.white),
                    ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  '2122',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 37),
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Container(
                height: 360,
                width: 350,
                decoration: const BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(Radius.circular(35))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.add,
                                color: Colors.grey,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Add Call',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.horizontal_distribute_rounded,
                                color: Colors.white,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hold Call',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.bluetooth,
                                color: Colors.white,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Bluetooth',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.volume_up,
                                color: Colors.white,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Speaker',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.mic_off_outlined,
                                color: Colors.white,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Mute',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.dialpad,
                                color: Colors.white,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Bluetooth',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Icon(
                          Icons.call_end, size: 40, color: Colors.white,
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                            BorderRadius.all(Radius.circular(35))),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              )
            ]),
          )),
    );
  }
}


