

import 'package:flutter/material.dart';

import 'detail_page.dart';
import 'dummy-fakultas.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.usname});

  final String usname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halo, $usname"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            height: 20,
          ),
          Container(
            //alignment: Alignment.centerLeft,
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                //color: Colors.black,
                width: 3
              ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.green
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Sudah kah Anda mengenal UPN?",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                Text("UPN Jogja adalah kampus Favorit di DIY lho"),
                TextButton(onPressed: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => detailPage()));},
                    child: Text("Kenalan Lebih Jauh Yuk",
                      style: TextStyle(color: Colors.blue),)),

              ],
            ),
          ),

          Container(height: 50,),
          Text("List Fakultas UPNVYK", textAlign: TextAlign.left, style: TextStyle(fontSize: 20),),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Atur menjadi 2 kolom

                mainAxisSpacing: 10,
                childAspectRatio: 7 / 2, // Atur proporsi item di grid
              ),
              itemCount: facultyList.length,
              itemBuilder: (context, index) {
                final Faculty fakultas = facultyList[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                          Image.network(fakultas.imageUrls[2],
                              width: 90, height: 90, fit: BoxFit.cover),
                    ]
                        ),
                        SizedBox(width: 8),
                        Column(
                            children: [
                              Text(fakultas.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16)),
                              Text("${fakultas.numberOfMajors} Jurusan"),
                              Text("${fakultas.numberOfStudents} Mahasiswa"),
                            ]
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),          // GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1)),
          // ListView.builder(itemBuilder: (context, index)
          // Card(
          //     child: Padding(padding: padding);
          // )
          // )

          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Logout")
          )
        ],
      ),
    );
  }
}
