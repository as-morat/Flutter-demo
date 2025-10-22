import 'package:flutter/material.dart';

class MyDemo extends StatelessWidget {

  final myItems = [
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"DIU"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University, Savar"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University, Dhaka, Bangladesh"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"DIU"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University, Savar"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University, Dhaka, Bangladesh"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University"},
    {"img":"https://studentshub.daffodilvarsity.edu.bd/assets/img/about/1719679319.jpeg","title":"Daffodil International University"},

  ];

  mySnackBar(message, context) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));

  MyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(title: Text("View", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,),),centerTitle: true, backgroundColor: Colors.deepPurple, foregroundColor: Colors.white,),
      body:
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 4/3),

      // ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () => mySnackBar(myItems[index]["title"], context),
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 220,
              child:   Image.network(myItems[index]["img"]!, fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }
}
