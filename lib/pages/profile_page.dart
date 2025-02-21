import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Material(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.blue,
                        size: 16.0,
                      ),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          ),
                      ),
                      Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 12.0,right: 12.0,top: 18.0,bottom: 18.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            children: [
                            Text(
                              'Ates Parilti',

                              ),
                            ],
                          )
                        ),
                        Padding(padding: const EdgeInsets.only(top: 24.0),),
                        Text(
                          'E-mail',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0,top: 18.0,bottom: 18.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'atesparilti@gmail.com',

                                ),

                              ],
                            )
                        ),
                        Padding(padding: const EdgeInsets.only(top: 24.0),),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0,top: 18.0,bottom: 18.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '0530 000 00 00',

                                ),
                              ],
                            )
                        ),
                        Padding(padding: const EdgeInsets.only(top: 24.0),),
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 12.0,right: 12.0,top: 18.0,bottom: 18.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Istanbul, Turkey',

                                ),
                              ],
                            )
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
