import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ["Megaman" , "Metal Gear" , "Super Smash" , "Final Fantasy"]; 
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Tipo 1"),
      ),
      body:  ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward , color: Colors.indigo,),
          onTap: () {} ,
        ) , 
        itemCount: options.length, 
        separatorBuilder: ( _, __ ) => const Divider(),
        ),
    );
  }
}