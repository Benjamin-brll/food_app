import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:food_app/src/config/app_styles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text('Food App'),
          //   actions: [
          //     IconButton(
          //       icon: Icon(Icons.search),
          //       onPressed: () {
          //         // Implementa la lógica de búsqueda aquí
          //       },
          //     ),
          //   ],
          // ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome 👋',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0
                            ),
                          ),
                          Text('All you need is food!'),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Benjamin Llauca',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Text('Lima, Perú'),
                                ],
                              ),
                              SizedBox(width: 12.0,),
                              const CircleAvatar(
                                radius: 24,
                                backgroundImage:  NetworkImage('https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000'),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                            controller: TextEditingController(),
                            decoration: InputDecoration(
                              prefixIcon: IconTheme(
                                data: IconThemeData(color: customGrey),
                                child: const Icon(Icons.search),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 13.0),
                              hintText: 'Search...',
                              border: customInputBorder,
                              errorBorder: customInputBorder,
                              disabledBorder: customInputBorder,
                              focusedBorder: customInputBorder,
                              focusedErrorBorder: customInputBorder,
                              enabledBorder: customInputBorder,
                            ),
                          )
                      ),
                      SizedBox(width: 12.0,),
                      SizedBox(
                        child: ElevatedButton(
                            onPressed: (){

                            },
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 11.0)),
                              backgroundColor: MaterialStatePropertyAll(customBlack),
                            ),
                            child: SvgPicture.asset(
                              'assets/filter_icon.svg',
                              width: 24.0,
                              color: customWhite,
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                      'CHOOSE YOUR FAVORITE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: SizedBox(
                    height: 80.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        print(index);
                        return Card(
                          child: Center(
                            child: Text('Elemento $index'),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'BEST SELLING',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0
                    ),
                  ),
                ),
              ),
              SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index){
                        print(index);
                        return Card(
                          child: Center(
                            child: Text('Elemento'),
                          ),
                        );
                      },
                      childCount: 20
                  )
              )
            ],
          )
        )
    );
  }
}